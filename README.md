# WSL2-Setup
A PowerShell script to check Windows build version and install Windows Subsystem for Linux Ver. 2

# Description
The script wsl_install.ps1 is a PowerShell script that checks if the Windows 10 version is at least build 19041 and if WSL 2 is already installed. If WSL 2 is not installed, the script enables the Virtual Machine Platform and the Windows Subsystem for Linux optional features, and sets the default version for new distributions to WSL 2.

# Usage
To use the script, open a PowerShell session and run it using the following command:

<\PATH_TO_FILE\.\wsl_install.ps1>

The script will check if the Windows 10 version is at least build 19041 and if WSL 2 is already installed.  If WSL 2 is not installed, the script will enable the necessary optional features and set the default version for new distributions to WSL 2.

# Requirements
Windows 10 build 19041 or later
PowerShell
