@ECHO OFF
IF "%1." == "." GOTO HELP
SET VM_NAME=%1
SET VM_HOME=C:\Program Files\Oracle\VirtualBox

ECHO Setting default screen resolution 1600*1200 for VM %VM_NAME%
"%VM_HOME%\VBoxManage.exe" setextradata "%VM_NAME%" "GUI/LastGuestSizeHint" "1600,1200"  
ECHO Done
GOTO EXIT

:HELP
ECHO Usage:
ECHO setScreenResolution.cmd VirtualMashineName

:EXIT
