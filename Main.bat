@echo off
setlocal enabledelayedexpansion
color 0A

rem Check if running as administrator
powershell -command "if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) { exit 1 } else { exit 0 }"
if %errorlevel% neq 0 (
    powershell -ExecutionPolicy Bypass -File "%~dp0elevate.ps1" "%~dpnx0"
    exit /b
)

rem Supported Games
set "7daytoedie=%~dp0game-configs/7-days-to-die/easysteamcmd.bat"
set "conan-exiles=%~dp0game-configs/conan-exiles/easysteamcmd.bat"
set "counter-strike-1-6=%~dp0game-configs/counter-strike-1-6/easysteamcmd.bat"
set "counter-strike-2=%~dp0game-configs/counter-strike-2/easysteamcmd.bat"
set "counter-strike-source=%~dp0game-configs/counter-strike-source/easysteamcmd.bat"
set "dayz=%~dp0game-configs/dayz/easysteamcmd.bat"
set "deadlock=%~dp0game-configs/deadlock/easysteamcmd.bat"
set "enshrouded=%~dp0game-configs/enshrouded/easysteamcmd.bat"
set "killing-floor-2=%~dp0game-configs/killing-floor-2/easysteamcmd.bat"
set "left-4-dead=%~dp0game-configs/left-4-dead/easysteamcmd.bat"
set "left-4-dead-2=%~dp0game-configs/left-4-dead-2/easysteamcmd.bat"
set "palworld=%~dp0game-configs/palworld/easysteamcmd.bat"
set "pixark=%~dp0game-configs/pixark/easysteamcmd.bat"
set "quake-live=%~dp0game-configs/quake-live/easysteamcmd.bat"
set "satisfactory=%~dp0game-configs/satisfactory/easysteamcmd.bat"
set "soldat=%~dp0game-configs/soldat/easysteamcmd.bat"
set "sons-of-the-forest=%~dp0game-configs/sons-of-the-forest/easysteamcmd.bat"
set "soulmask=%~dp0game-configs/soulmask/easysteamcmd.bat"
set "sven-co-op=%~dp0game-configs/sven-co-op/easysteamcmd.bat"
set "team-fortress-2=%~dp0game-configs/team-fortress-2/easysteamcmd.bat"
set "unturned=%~dp0game-configs/unturned/easysteamcmd.bat"
set "valheim=%~dp0game-configs/valheim/easysteamcmd.bat"
set "v-rising=%~dp0game-configs/v-rising/easysteamcmd.bat"

rem Get user input (example: "7daytoedie" or "conan-exiles")
:checkGame
echo Please enter the name of the game you want to launch:
echo choose one of the following:
echo 7daytoedie
echo conan-exiles
echo counter-strike-1-6
echo counter-strike-2
echo counter-strike-source
echo dayz
echo deadlock
echo enshrouded
echo killing-floor-2
echo left-4-dead
echo left-4-dead-2
echo palworld
echo pixark
echo quake-live
echo satisfactory
echo soldat
echo sons-of-the-forest
echo soulmask
echo sven-co-op
echo team-fortress-2
echo unturned
echo valheim
echo v-rising

set /p "game_choice="

rem Check if the chosen game is valid
if defined game_choice (
    set script_path=!%game_choice%!
    if exist "!script_path!" (
        echo Launching "%game_choice%"...
        start "" "!script_path!"
    ) else (
        echo Error: Invalid game choice.
    )
) else (
    echo Please enter a valid game name.
    goto checkGame
)

endlocal
