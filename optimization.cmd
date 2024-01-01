@echo off

REM Set the current directory to the script's directory
cd /d "%~dp0"

echo Running scripts from "scripts" folder...

echo Executing block-telemetry.ps1...
start powershell -windowstyle hidden "& ""scripts\block-telemetry.ps1"""
timeout 2 >nul

echo Executing disable-services.ps1...
start powershell -windowstyle hidden "& ""scripts\disable-services.ps1"""
timeout 2 >nul

echo Executing disable-windows-defender.ps1...
start powershell -windowstyle hidden "& ""scripts\disable-windows-defender.ps1"""
timeout 2 >nul

echo Executing fix-privacy-settings.ps1...
start powershell -windowstyle hidden "& ""scripts\fix-privacy-settings.ps1"""
timeout 2 >nul

echo Executing optimize-user-interface.ps1...
start powershell -windowstyle hidden "& ""scripts\optimize-user-interface.ps1"""
timeout 2 >nul

echo Executing optimize-windows-update.ps1...
start powershell -windowstyle hidden "& ""scripts\optimize-windows-update.ps1"""
timeout 2 >nul

echo Executing remove-default-apps.ps1...
start powershell -windowstyle hidden "& ""scripts\remove-default-apps.ps1"""
timeout 2 >nul

echo Executing remove-onedrive.ps1...
start powershell -windowstyle hidden "& ""scripts\remove-onedrive.ps1"""

echo Running scripts from "utils" folder...

echo Applying dark theme settings...
start utils\dark-theme.reg
timeout 2 >nul

echo Disabling Edge prelaunch...
start utils\disable-edge-prelaunch.reg
timeout 2 >nul

echo Disabling memory compression...
start powershell -windowstyle hidden "& ""utils\disable-memory-compression.ps1"""
timeout 2 >nul

echo Disabling prefetch prelaunch...
start powershell -windowstyle hidden "& ""utils\disable-prefetch-prelaunch.ps1"""
timeout 2 >nul

echo Disabling scheduled tasks...
start powershell -windowstyle hidden "& ""utils\disable-scheduled-tasks.ps1"""
timeout 2 >nul

echo Disabling SearchUI...
start utils\disable-searchUI.bat
timeout 2 >nul

echo Disabling ShellExperienceHost...
start utils\disable-ShellExperienceHost.bat
timeout 2 >nul

echo Applying photo viewer settings...
start utils\enable-photo-viewer.reg
timeout 2 >nul

echo Installing basic software...
start powershell -windowstyle hidden "& ""utils\install-basic-software.ps1"""
timeout 2 >nul

echo Lowering RAM usage...
start utils\lower-ram-usage.reg
timeout 2 >nul

echo Tuning SSD settings...
start powershell -windowstyle hidden "& ""utils\ssd-tune.ps1"""

echo All scripts have been executed. Press any key to exit.
pause >nul
