@echo on
DISM.exe /Online /Cleanup-image /Restorehealth
sfc /scannow

pause