function Show-Menu {

    Write-Host "Choose an option"
    Write-Host "1: Create Linked Clone"
    Write-Host "2: View VM details"
    Write-Host "3: Enter Virtual Network Configuration"
    Write-Host "4: Start a Virtual Machine"
    Write-Host "5: Assign the network adapter of a VM to a virtual network"
    Write-Host "6: Edit VM settings"
    Write-Host "Q: Quit."
}

# import module
import-Module -Name /home/zach/Tech-Journals/480-DevOps/modules/480-Utils1/480-utils1.psm1 -Force

# present banner
480Banner

# load json as conf
$conf = Get-480Config -config_path "/home/zach/Tech-Journals/480-DevOps/480.json"

# Connect to vCenter
480connect -server $conf.vcenter_server

# Select VM from folder
# Write-Host "Selecting your VM"
# $selected_vm = Select-VM -folder "BASEVM"

do
 {
    Show-Menu
    $selection = Read-Host "Choose an option"
    switch ($selection)
    {
    '1' {
        # Select VM from folder
        Write-Host "Selecting your VM"
        $selected_vm = Select-VM -folder "BASEVM"
        
        # Select snapshot
        $snapshot = vmSnapshot -snapshot_name $conf.snapshot -selected_vm $selected_vm

        # Select ESXi Host
        $vmhost = esxiHost -hostIP $conf.esxi_host

        # Select datastore
        $ds = datastoreName -datastore $conf.default_datastore

        # Create Linked Clone
        linkedClone -vm $selected_vm -snapshot $snapshot -vmhost $vmhost -ds $ds -net $conf.default_network
    }
    '2' {
        $folder = Read-Host "Enter the folder where the VM is stored"
        Write-Host "Selecting your VM"
        $selected_vm = Select-VM -folder $folder
        vmDetails -vmName $selected_vm.Name
    }
    '3' {
        vSwitch -vmHost $conf.esxi_host
    }
    '4' {
        $folder = Read-Host "Enter the folder where the VM is stored"
        Write-Host "Selecting your VM"
        $selected_vm = Select-VM -folder $folder
        startVM -vmName $selected_vm.Name
    }
    '5' {
        $folder = Read-Host "Enter the folder where the VM is stored"
        Write-Host "Selecting your VM"
        $selected_vm = Select-VM -folder $folder
        setNetwork -vmName $selected_vm.Name
    }
    '6' {
        $folder = Read-Host "Enter the folder where the VM is stored"
        Write-Host "Selecting your VM"
        $selected_vm = Select-VM -folder $folder
        editVM -vmName $selected_vm.Name
    }
    }
    pause
    Clear-Host
 }
 until ($selection -eq 'q')
