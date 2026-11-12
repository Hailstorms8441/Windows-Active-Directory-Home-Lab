# Windows Active Directory Home Lab

A single-domain Active Directory lab built in VMware workstation. I'm using it to practice OU design, Group Policy, and permissions with the AGDLP model. This is a work in progress.

## Active Directory Layout
```
lab.local
|
|- Domain Controllers
|    |- DC01
|
|- Lab
|    |
|    | - Users
|    |   | - Admins
|    |   |   |- adm-jsmith
|    |   |
|    |   | - General
|    |   |   |- alice
|    |   |   |- Bob
|    |
|    | - Computers
|    |   | - Workstations
|    |   |   |- WORKSTATION1
|    |   |
|    | - Groups
|    |   | - GG-Admins
```
## Whats Configured
- OU Structure with Users, Computers, and Groups
- GPOs: Workstation Baseline (inactivity lock), user wallpaper, local admin group
- Client joined to domain and tested with domain logins

## Repo Contents

- [`docs/`](docs/): AD tree and network information
- [`scripts/ExportConfigs.ps1`](scripts/): exports users, groups, and OUs
- [`exported-configs/`](exported-configs/): output of the export script
- [`screenshots/`](screenshots/): AD Users and Computers, GPOs, and client login screenshots

## Problems I hit and fixed

- **Couldn't join the domain:** the client was on Windows 11 Home. Upgraded to Pro.
- **VMs froze in VirtualBox** after a system update. Moved the lab to VMware.

## Things to Add:

- DHCP server
- Filesharing services
- Script that adds users based on an input csv
- Another client VM to work with multiple workstations
- Better documentation on this page

## Skills Practiced:

- Windows Administration
- Active Directory
- Virtual Networking (VMWare NAT, static IPs, DNS)
- Scripting with powershell (Work in progress)
