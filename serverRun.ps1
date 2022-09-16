start-process powershell.exe -argumentList "-noexit", "-command mongod" 

$initialPath = Get-Location
$pathToServers = "C:\Users\bsk19\OneDrive\Desktop\Stackroute\CAPSTONE PROJECT\repos\full backend\kanban_project_hsr_group_2"
# Read-Host -Prompt "enter server parent directory"
# "C:\Users\bsk19\OneDrive\Desktop\Stackroute\CAPSTONE PROJECT\repos\full backend\kanban_project_hsr_group_2"
Set-Location $pathToServers

$directories = Get-ChildItem -Directory
# Write-output $directories[0]
# set-location $directories[0]
# $currLoc = get-location
# start-process powershell.exe -argumentList "-noexit", "-command mvn spring-boot:run"
forEach($directory in $directories)
{
    # $directory.Name
    Set-Location $directory
    # $currLoc = Get-Location
    # Write-Output $currLoc
    start-process powershell.exe -argumentList "-noexit", "-command mvn spring-boot:run" 
    Set-Location ..  
    # Write-Output Get-Location
}   
Set-Location $initialPath

$pathToServers = "C:\Users\bsk19\OneDrive\Desktop\Stackroute\CAPSTONE PROJECT\repos\kanban_project_hsr_group_2_frontend\kanbanBoard"
# Read-Host -Prompt "enter frontend directory"
set-location $pathToServers
start-process powershell.exe -argumentList "-noexit", "-command ng serve" 

Set-Location $initialPath
$jsonServer = "C:\Users\bsk19\OneDrive\Desktop\Stackroute\CAPSTONE PROJECT\repos\json for images"
 set-location $jsonServer
start-process powershell.exe -argumentList "-noexit", "-command npx json-server images.json --watch --port 5000" 

Set-Location $initialPath

# apiService