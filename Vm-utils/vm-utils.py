# Import Modules
import getpass # USed to securely input Vcenter password
from pyVim.connect import SmartConnect 
from pyVmomi import vim # Imports the VMware vSphere API bindings
import ssl # Imports SSL module

def connect_to_vcenter(vcenter_host, username, password):  # Function to connect to the Vcenter Server
    try:
        s = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
        s.verify_mode = ssl.CERT_NONE
        si = SmartConnect(host=vcenter_host, user=username, pwd=password, sslContext=s)
        return si
    except Exception as e:
        print(f"Error connecting to vCenter: {str(e)}")
        return None
# Function to retrieve names of all virtual machines in vCenter
def get_all_vm_names(si):
    vm_names = []
    if si is not None:
        content = si.RetrieveContent()
        view = content.viewManager.CreateContainerView(content.rootFolder, [vim.VirtualMachine], True)

        for vm in view.view:
            vm_names.append(vm.name)

        view.Destroy()

    return vm_names
# Function to allow the user to select a virtual machine from the list
def select_vm_to_view_info(vm_names):
    print("Available VMs:")
    for i, vm_name in enumerate(vm_names, 1):
        print(f"{i}. {vm_name}") # Display a nmbered list of available VM's

    while True:
        try:
            choice = int(input("Select a VM (enter the number): "))
            if 1 <= choice <= len(vm_names):  # Check if the choice is within a valid range
                return vm_names[choice - 1]  # Subtract 1 here
            else:
                print("Invalid choice. Please select a valid number.")
        except ValueError:
            print("Invalid input. Please enter a number.")
# Function to retrieve information about selected virtual machine by name
def get_vm_info_by_name(si, vm_name):
    vm_info = []
    if si is not None:
        content = si.RetrieveContent()
        view = content.viewManager.CreateContainerView(content.rootFolder, [vim.VirtualMachine], True)

        for vm in view.view:
            if vm.name == vm_name:
                vm_info.append({
                    'Name': vm.name,
                    'Power State': vm.runtime.powerState,
                    'Number of CPUs': vm.config.hardware.numCPU,
                    'Memory (GB)': vm.config.hardware.memoryMB / 1024.0,
                    'IP Address': vm.summary.guest.ipAddress
                })

        view.Destroy()

    return vm_info
# Main function to execute code
def main():
    vcenter_host = "vcenter.zachary.longo.local"  # Updated hostname
    username = "zach-adm"
    password = getpass.getpass("Enter your vCenter password: ")

    si = connect_to_vcenter(vcenter_host, username, password)

    if si is not None:
        vm_names = get_all_vm_names(si)
        if not vm_names:
            print("No VMs found in the vCenter.")
        else:
            selected_vm = select_vm_to_view_info(vm_names)
            print(f"Selected VM: {selected_vm}")

            # Retrieve and display VM information
            vm_info = get_vm_info_by_name(si, selected_vm)
            if vm_info:
                print("VM Information:")
                print("VM Name: ", vm_info[0]['Name'])
                print("Power State: ", vm_info[0]['Power State'])
                print("Number of CPUs: ", vm_info[0]['Number of CPUs'])
                print("Memory (GB): ", vm_info[0]['Memory (GB)'])
                print("IP Address: ", vm_info[0]['IP Address'])
            else:
                print(f"No information found for VM: {selected_vm}")
    else:
        print("Could not connect to vCenter.")

if __name__ == "__main__":
    main()


