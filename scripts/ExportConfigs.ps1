$out = Read-Host "Enter the path you want to export at:"

Get-ADOrganizationalUnit -Filter * | Select Name, DistinguishedName | Export-Csv "$out\ous.csv" -NoTypeInformation
Get-ADUser -Filter * -Properties Enabled | Select SamAccountName, DistinguishedName, Enabled | Export-Csv "$out\users.csv" -NoTypeInformation
Get-ADGroup -Filter * | Select Name, GroupScope, DistinguishedName | Export-Csv "$out\groups.csv" -NoTypeInformation
Get-ADComputer -Filter * | Select Name, DistinguishedName | Export-Csv "$out\computers.csv" -NoTypeInformation
Get-DnsserverZone | Export-Csv "$out\dns-zones.csv" -NoTypeInformation
Backup-GPO -All -Path "$out\gpo-backup"
Get-GPOReport -All -ReportType Html -Path "$out\gpo-report.html"
