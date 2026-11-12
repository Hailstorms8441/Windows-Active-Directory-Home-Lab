# Windows Active Directory Home Lab

This is a working progress repo for my Windows Active Directory Home Lab. Currently I have a Windows server 2025 and a Windows 11 pro vm setup inside of VMware. The Windows Server has a Domain Controler that is used by the client vm. The tree for the Active Directory config is shown in docs as well as the information about the network. I have it setup so that the vms communicate through vmware's vmnet interface. You can find my user and group configs within the exported configs folder. These were scraped using the ExportConfigs.ps1 script within scripts. 

## Skills Learned

- Windows Administration
- Active Directory
- Networking Across VMs
- Scripting with powershell (Work in progress)

## Things I plan to add in the future:

- DCHP server
- Filesharing services
- Script that adds users based on an inputed csv
- Another client VM to work with multiple workstations
- Better documentation on this page