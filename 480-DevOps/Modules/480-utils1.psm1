function 480Banner()
# Presents Banner for 480Utils
{
    $banner = @"
    ⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠛⠛⠋⠉⠈⠉⠉⠉⠉⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣿⣿
    ⣿⣿⣿⣿⡏⣀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿
    ⣿⣿⣿⢏⣴⣿⣷⠀⠀⠀⠀⠀⢾⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿
    ⣿⣿⣟⣾⣿⡟⠁⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣷⢢⠀⠀⠀⠀⠀⠀⠀⢸⣿
    ⣿⣿⣿⣿⣟⠀⡴⠄⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⣿
    ⣿⣿⣿⠟⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠶⢴⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⣿
    ⣿⣁⡀⠀⠀⢰⢠⣦⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⡄⠀⣴⣶⣿⡄⣿
    ⣿⡋⠀⠀⠀⠎⢸⣿⡆⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⠗⢘⣿⣟⠛⠿⣼
    ⣿⣿⠋⢀⡌⢰⣿⡿⢿⡀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⡇⠀⢸⣿⣿⣧⢀⣼
    ⣿⣿⣷⢻⠄⠘⠛⠋⠛⠃⠀⠀⠀⠀⠀⢿⣧⠈⠉⠙⠛⠋⠀⠀⠀⣿⣿⣿⣿⣿
    ⣿⣿⣧⠀⠈⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠟⠀⠀⠀⠀⢀⢃⠀⠀⢸⣿⣿⣿⣿
    ⣿⣿⡿⠀⠴⢗⣠⣤⣴⡶⠶⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡸⠀⣿⣿⣿⣿
    ⣿⣿⣿⡀⢠⣾⣿⠏⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠉⠀⣿⣿⣿⣿
    ⣿⣿⣿⣧⠈⢹⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿
    ⣿⣿⣿⣿⡄⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣦⣄⣀⣀⣀⣀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠙⣿⣿⡟⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠁⠀⠀⠹⣿⠃⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢐⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⠿⠛⠉⠉⠁⠀⢻⣿⡇⠀⠀⠀⠀⠀⠀⢀⠈⣿⣿⡿⠉⠛⠛⠛⠉⠉
    ⣿⡿⠋⠁⠀⠀⢀⣀⣠⡴⣸⣿⣇⡄⠀⠀⠀⠀⢀⡿⠄⠙⠛⠀⣀⣠⣤⣤⠄⠀
                       
"@

    Write-Host $banner
}

function 480connect([string] $server)
# connects to vCenter
{
    $conn = $Global:DefaultVIServer

    if ($conn){
        $msg = "Already connected to: {0}" -f $conn

        # Presents if user is already connected
        Write-Host -ForegroundColor Green $msg
    }else
    {
        # Connecting to server
        $conn = Connect-VIServer -Server $server
    }
}

function Get-480Config([string] $config_path)
# Pulls config file and converts data from json
{
    $conf=$null
    if(Test-Path $config_path)
    {
        # Converts from json
        $conf = (Get-Content -Raw -Path $config_path | ConvertFrom-Json)
        $msg = "Using Configuration at {0}" -f $config_path
        Write-Host -ForegroundColor Green $msg
    }else
    {
        # Presents if no configuration present
        Write-Host -ForegroundColor Yellow "No Configuration"
    }

    # Returns config
    return $conf
}

function Select-VM([string] $folder)
# Presents VM selection Menu and allows user to select VM
{
    # Clears selection
    $selected_vm=$null

    # Error handling
    try
    {
        # Gets VMs from folder
        $vms = Get-VM -Location $folder
        $index = 1
        foreach($vm in $vms)
        {
            #Lists each VM in folder
            Write-Host [$index] $vm.name
            $index+=1
        }

        # Prompts user to pick VM from index number
        $pick_index =  Read-Host "Which index number [x] do you wish to pick?"

        # Handles invalid index
        if ($pick_index -gt $index -1)
        {
            # Notifies user of invalid index
            Write-Host "Please select a valid VM" -ForegroundColor Yellow
        }else 
        {
            # Selects VM that user specified
            $selected_vm = $vms[$pick_index -1]
            Write-Host "You picked " $selected_vm.Name
            
            # Returns VM object
            return $selected_vm
        }
        
    }
    catch
    {
        # Displays if folder is invalid
        Write-Host "Invalid Folder: $folder" -ForegroundColor Red
    }
}

function vmSnapshot ([string] $snapshot_name, $selected_vm)
# Chooses snapshot of VM selected by user
{
    # Gets VM user selected
    $vm = Get-VM -Name $selected_vm.Name
    
    # Error Handling
    try {

        # Prompt User for name of snapshot
        $snapPrompt = Read-Host -Prompt "Enter snapshot name (default: $snapshot_name)" 

        # Take snapshot of VM, terminate on error
        $snapshot = Get-Snapshot -VM $vm -Name $snapPrompt -ErrorAction Stop
        return $snapshot
    }
    catch {

        # Prompts user if invalid input detected
        $uInput = Read-Host "No valid VM selected. Use default? (y/n)"

        # Uses default, else quits
        if ($uInput -eq "y" -or  "Y") 
        {
            # Take snapshot of VM
            $snapshot = Get-Snapshot -VM $vm -Name $snapshot_name
            return $snapshot
        }else {
            Write-Host "Bye Bye :mogs:"
            exit
        }
    }
}

function esxiHost ([string] $hostIP)
# user selects ESXi host
{
    # Error Handling
    try {
        # Prompt user for IP of vmHost
        $hostPrompt = Read-Host -Prompt "Enter IP of VM Host (default: $hostIP)"

        # Define vmHost, terminate on error
        $vmHost = Get-VMHost -Name $hostPrompt -ErrorAction Stop
        return $vmHost
    }
    catch {

        # Runs if invalid input detected
        $uInput = Read-Host "No valid VM Host selected. Use default? (y/n)"

        # uses default, else quits
        if ($uInput -eq "y" -or  "Y") 
        {
            # Define vmHost
            $vmHost = Get-VMHost -Name $hostIP
            return $vmHost
        }else {
            Write-Host "Bye Bye"
            exit
        }
    }
}

function datastoreName ([string] $datastore)
# User selects datastore from ESXi host
{
    # Error Handling
    try {
        # Prompt user for datastore
        $hostPrompt = Read-Host -Prompt "Enter the datastore you would like to use (default: $datastore)"
        # Define datastore
        $ds = Get-Datastore -Name $hostPrompt -ErrorAction Stop
        return $ds
    }
    catch {

        # Runs if invalid input detected
        $uInput = Read-Host "No valid datastore selected. Use default? (y/n)"

        # Uses default, else quits
        if ($uInput -eq "y" -or  "Y") 
        {
            # Define datastore
            $ds = Get-Datastore -Name $datastore
            return $ds
        }else {
            Write-Host "Bye Bye"
            exit
        }
    }
}

function linkedClone ($vm, $snapshot, $vmhost, $ds, $net)
# Creates linked clone from predefined parameters and sets network adapter
{
    Write-Host "Creating linked clone..."

    # Defines linked clone
    $linkedClone = "{0}.linked" -f $vm.name

    # Defines Linked VM
    $linkedVM = New-VM -LinkedClone -Name $linkedClone -VM $vm -ReferenceSnapshot $snapshot -VMHost $vmhost -Datastore $ds
    
    # Setting network adapter and Error handling
    try
    {
        # Promts user for network adapter name:
        $hostPrompt = Read-Host -Prompt "Enter the network adapter you would like to use (default: $net)"
        # Assigns net adapter to linked VM
        Get-VM $linkedVM | Get-NetworkAdapter | Set-NetworkAdapter -NetworkName $hostPrompt -ErrorAction Stop
        Write-Host "Network adapter assigned: $net" -ForegroundColor Green
    }
    catch
    {
        # Runs if no valid input detected
        $uInput = Read-Host "No valid network adapter selected. Use default? (y/n)"

        # Uses default, else quits
        if ($uInput -eq "y" -or  "Y") 
        {
            # set network adapter
            Get-VM $linkedVM | Get-NetworkAdapter | Set-NetworkAdapter -NetworkName $net
            Write-Host "Network adapter assigned: $net" -ForegroundColor Green

        }else {
            Write-Host "Bye Bye"
            exit
        }
    }
}

function vSwitch([string] $vmHost)
# Creates a virtual switch in vCenter
{
    # prompts user
    $uInput = Read-Host "Would you like to create a new virtual switch? (y/n)"

    if ($uInput -eq "y" -or $uInput -eq "Y")
    {
        $switchName = Read-Host "Please enter the name of the new virtual switch"
        # Creates new switch
        $vswitch =  New-VirtualSwitch -VMHost $vmHost -Name $switchName
        
        # Prompts user
        $portPrompt = Read-Host "Create and assign port group? (y/n)"

        if ($portPrompt -eq "y" -or $portPrompt -eq "Y")
        {
            # calls protgroup function
            portGroup -vmHost $vmHost -vswitch $vswitch
        }
        elseif ($portPrompt -eq "n" -or $portPrompt -eq "N") 
        {
            # Bye Bye
            Write-Host "Bye Bye :mogs:"
            exit
        }
        else
        {
            # error message on invalid input
            Write-Host "No valid input detected" -ForegroundColor Yellow
        }
        }
        return $vswitch

    elseif ($uInput -eq "n" -or $uInput -eq "N") 
    {
        # Bye Bye
        Write-Host "Bye Bye :mogs:"
        exit
    }
    else
    {
        # error message on invalid input
        Write-Host "No valid input detected" -ForegroundColor Yellow
        vSwitch
    }
}

function portGroup([string] $vmHost, $vswitch)
# Creates a portgroup in vcenter and assigns it to a virtual switch
{
    # Gathering input
    $namePrompt = Read-Host "Enter the name of the new port group"
    $vlanPrompt = Read-Host "Enter the VLAN ID"

    # Assigns port
    Get-VMHost -name $vmHost | Get-VirtualSwitch -name $vSwitch.Name | New-VirtualPortGroup -name $namePrompt -VLanId $vlanPrompt

}

function vmDetails([string] $vmName)
# Gets the details of a chosen VM
{
    # Gathering details
    $ip = (Get-VM -Name $vmName).Guest.IPAddress
    $mac = Get-VM -Name $vmName | Get-NetworkAdapter | Select-Object -ExpandProperty MacAddress

    # Prints Details
    Write-Host "VM Name: $vmName"
    Write-Host "VM IP Address: " $ip[0]
    Write-Host "VM MAC Address: " $mac[0]
}

function startVM([string] $vmName)
# Powers on a VM
{
    # Checks if vm is on
    if (Get-VM -Name $vmName | Where-Object {$_.PowerState -eq "PoweredOn"})
    {
        Write-Host "VM is already powered on"
    }
    else
    {
        # Turns it on
        Start-VM -VM $vmName -Confirm
    }
}

function setNetwork([string] $vmName)
# Sets the network adapter of a VM
{
    # Clears selection
    $selected_adapter=$null

    # Gets adapters from VM
    $adapters = Get-VM -Name $vmName | Get-NetworkAdapter
    $index = 1
    foreach($adapter in $adapters)
    {
        # Lists each adapter for VM
        Write-Host [$index] $adapter.Name
        $index+=1
    }

    # Prompts user to pick adapter from index number
    $pick_index =  Read-Host "Which index number [x] do you wish to pick?"

    # Handles invalid index
    if ($pick_index -gt $index -1)
    {
        # Notifies user of invalid index
        Write-Host "Please select a valid network adapter" -ForegroundColor Yellow
    }else 
    {
        # Selects adapter that user specified
        $selected_adapter = $adapters[$pick_index -1]
        Write-Host "You picked " $selected_adapter.Name
        $hostPrompt = Read-Host "Enter the name of the virtual network to assign"
        Get-VM -Name $vmName | Get-NetworkAdapter | Set-NetworkAdapter -NetworkName $hostPrompt -ErrorAction Stop
        Write-Host "Network adapter assigned" -ForegroundColor Green
    }

}

function editVM([string] $vmName)
# edits some paramaters in VM settings
{
    editMem -vmName $vmName

}

function editMem([string] $vmName)
# edits the memory value of a VM
{
    $uInput = Read-Host "Would you like to edit the memory of the VM?"
    if ($uInput -eq "y" -or $uInput -eq "Y")
    {
        $hostPrompt = Read-Host "Enter the amount of memory you wish the VM to have (GB)"
        Get-VM -Name $vmName | Set-Vm -MemoryGB $hostPrompt
    }
    elseif ($uInput -eq "n" -or $uInput -eq "N") 
    {
        # bye bye :mogs:
        Write-Host "Bye-Bye"
        exit
    }
    else
    {
        # error message on invalid input
        Write-Host "No valid input detected" -ForegroundColor Yellow
        editVM
    }
}

function editCPU([string] $vmName)
# edits the CPU of a VM
{
    $uInput = Read-Host "Edit the CPU count of the VM?"
    if ($uInput -eq "y" -or $uInput -eq "Y")
    {
        $hostPrompt = Read-Host "Enter the amount of CPUs for the VM"
        Get-VM -Name $vmName | Set-Vm -NumCpu $hostPrompt
    }
    elseif ($uInput -eq "n" -or $uInput -eq "N") 
    {
        # bye bye :mogs:
        Write-Host "Bye-Bye"
        exit
    }
    else
    {
        # error message on invalid input
        Write-Host "No valid input detected" -ForegroundColor Yellow
        editVM
    }
}




























