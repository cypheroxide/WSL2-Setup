# WSL 2 install script
# Version 1.0
# by - Angel "CypherOxide" Santiago

# Check if Windows 10 version is at least build 19041
$build = (Get-WmiObject -Class Win32_OperatingSystem).BuildNumber
if ($build -lt 19041) {
  Write-Output "This script requires Windows 10 build 19041 or later."
  exit
}

# Check if WSL 2 is already installed
if (Get-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online | Select-Object State) {
  Write-Output "WSL 2 is already installed on this system."
  exit
}

# Enable the Virtual Machine Platform optional feature
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform

# Enable the Windows Subsystem for Linux optional feature
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# Set the default version for new distributions to WSL 2
wsl --set-default-version 2

Write-Output "WSL 2 has been installed on this system."
