@echo off

echo Downloading GlobalProtectSetup...
curl --location --output "C:\GlobalProtect64.msi" "https://github.com/alessandroere/globalprotect/raw/main/GlobalProtect64.msi"

echo Installing GlobalProtect...
msiexec /i "C:\GlobalProtect64.msi" /quiet PORTAL="vpn-partners.essilorluxottica.com" CONNECTMETHOD="on-demand" SHOWSYSTEMTRAYNOTIFICATIONS="no" USESSO="NO" DEFAULTBROWSER="YES"

echo Deleting GlobalProtect setup file...
DEL /f C:\GlobalProtect64.msi




