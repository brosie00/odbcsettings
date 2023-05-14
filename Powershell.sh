https://learn.microsoft.com/en-us/powershell/scripting/install/install-rhel?view=powershell-7.3

# PowerShell for Linux is published to official Microsoft repositories for easy installation and updates.

# On RHEL 7:

# sh

# Copy
# # Register the Microsoft RedHat repository
sudo curl https://packages.microsoft.com/config/rhel/7/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo

# Install PowerShell
sudo yum install --assumeyes powershell

# Start PowerShell
pwsh
#As superuser, register the Microsoft repository once. After registration, you can update PowerShell with sudo yum update powershell.

# On RHEL 8:



Copy
# Register the Microsoft RedHat repository
curl https://packages.microsoft.com/config/rhel/8/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo

# Install PowerShell
sudo dnf install --assumeyes powershell

# Start PowerShell
pwsh
As superuser, register the Microsoft repository once. After registration, you can update PowerShell with sudo dnf upgrade powershell.