# Import necessary modules
import getpass  # Used to securely input the vCenter password
from pyVim.connect import SmartConnect  # Imports the SmartConnect function for vCenter connection
from pyVmomi import vim  # Imports the VMware vSphere API bindings
import ssl  # Imports the SSL module for secure communication

# Function to connect to the vCenter server
def connect_to_vcenter(vcenter_host, username, password):
    try:
        s = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
        s.verify_mode = ssl.CERT_NONE
        si = SmartConnect(host=vcenter_host, user=username, pwd=password, sslContext=s)
        return si  # Return the service instance if the connection is successful
    except Exception as e:
        print(f"Error connecting to vCenter: {str(e}")
        return None  # Return None in case of connection failure

# Function to retrieve names of all virtual machines in the vCenter
def get_all_vm_names(si):
    vm_names = []
    if si is not None:
        content = si.RetrieveContent()  # Retrieve the content of the vCenter
        view = content.viewManager.CreateContainerView(content.rootFolder, [vim.VirtualMachine], True)  # Create a view of virtual machines

        for vm in view.view:
            vm_names.append(vm.name)  # Add the names of virtual machines to the list

        view.Destroy()  # Destroy the view to release resources

    return vm_names  # Return the list of virtual machine names

# Function to allow the user to select a virtual machine from the list
def select_vm_to_view_info(vm_names):
    print("Available VMs:")
    for i, vm_name in enumerate(vm_names, 1):
        print(f"{i}. {vm_name}")  # Display a numbered list of available virtual machines

    while True:
        try:
            choice = int(input("Select a VM (enter the number): "))
            if 1 <= choice <= len(vm_names):  # Check if the choice is within a valid range
                return vm_names[choice - 1]  # Subtract 1 here to get the correct index
            else:
                print("Invalid choice. Please select a valid number.")
        except ValueError:
            print("Invalid input. Please enter a number.")

# Function to retrieve information about a selected virtual machine by name
def get_vm_info_by_name(si, vm_name):
    vm_info = []
    if si is not None:
        content = si.RetrieveContent()  # Retrieve the content of the vCenter
        view = content.viewManager.CreateContainerView(content.rootFolder, [vim.VirtualMachine], True)  # Create a view of virtual machines

        for vm in view.view:
            if vm.name == vm_name:
                vm_info.append({
                    'Name': vm.name,
                    'Power State': vm.runtime.powerState,
                    'Number of CPUs': vm.config.hardware.numCPU,
                    'Memory (GB)': vm.config.hardware.memoryMB / 1024.0,
                    'IP Address': vm.summary.guest.ipAddress
                })  # Create a dictionary with information about the selected virtual machine

        view.Destroy()  # Destroy the view to release resources

    return vm_info  # Return the list of dictionaries containing VM information

# Function to power on a virtual machine
def power_on_vm(si, vm_name):
    if si is not None:
        content = si.RetrieveContent()
        vm = None

        # Find the VM by name
        for obj in content.viewManager.CreateContainerView(content.rootFolder, [vim.VirtualMachine], True).view:
            if obj.name == vm_name:
                vm = obj
                break

        if vm:
            try:
                task = vm.PowerOnVM_Task()
                return task.info.result
            except Exception as e:
                print(f"Failed to power on VM: {str(e)}")

# Function to power off a virtual machine
def power_off_vm(si, vm_name):
    if si is not None:
        content = si.RetrieveContent()
        vm = None

        # Find the VM by name
        for obj in content.viewManager.CreateContainerView(content.rootFolder, [vim.VirtualMachine], True).view:
            if obj.name == vm_name:
                vm = obj
                break

        if vm:
            try:
                task = vm.PowerOffVM_Task()
                return task.info.result
            except Exception as e:
                print(f"Failed to power off VM: {str(e)}")

# Function to create a snapshot of a virtual machine
def create_snapshot(si, vm_name, snapshot_name, snapshot_description=""):
    if si is not None:
        content = si.RetrieveContent()
        vm = None

        # Find the VM by name
        for obj in content.viewManager.CreateContainerView(content.rootFolder, [vim.VirtualMachine], True).view:
            if obj.name == vm_name:
                vm = obj
                break

        if vm:
            try:
                task = vm.CreateSnapshot_Task(name=snapshot_name, description=snapshot_description, memory=False, quiesce=False)
                return task.info.result
            except Exception as e:
                print(f"Failed to create a snapshot: {str(e)}")

# Function to restore the latest snapshot of a virtual machine
def restore_latest_snapshot(si, vm_name):
    if si is not None:
        content = si.RetrieveContent()
        vm = None

        # Find the VM by name
        for obj in content.viewManager.CreateContainerView(content.rootFolder, [vim.VirtualMachine], True).view:
            if obj.name == vm_name:
                vm = obj
                break

        if vm:
            try:
                snapshot = vm.snapshot.rootSnapshotList[0]  # Assuming the latest snapshot is at the root
                task = snapshot.RevertToSnapshot_Task()
                return task.info.result
            except Exception as e:
                print(f"Failed to restore the latest snapshot: {str(e)}")

#

