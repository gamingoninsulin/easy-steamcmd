@echo off
setlocal enabledelayedexpansion
color 0A

rem Supported Games
set "7daytoedie=./game-configs/7-days-to-die/easysteamcmd.bat"
set "conan-exiles=./game-configs/conan-exiles/easysteamcmd.bat"
set "counter-strike-1-6=./game-configs/counter-strike-1-6/easysteamcmd.bat"
set "counter-strike-2=./game-configs/counter-strike-2/easysteamcmd.bat"
set "counter-strike-source=./game-configs/counter-strike-source/easysteamcmd.bat"
set "dayz=./game-configs/dayz/easysteamcmd.bat"
set "deadlock=./game-configs/deadlock/easysteamcmd.bat"
set "enshrouded=./game-configs/enshrouded/easysteamcmd.bat"
set "killing-floor-2=./game-configs/killing-floor-2/easysteamcmd.bat"
set "left-4-dead=./game-configs/left-4-dead/easysteamcmd.bat"
set "left-4-dead-2=./game-configs/left-4-dead-2/easysteamcmd.bat"
set "palworld=./game-configs/palworld/easysteamcmd.bat"
set "pixark=./game-configs/pixark/easysteamcmd.bat"
set "quake-live=./game-configs/quake-live/easysteamcmd.bat"
set "satisfactory=./game-configs/satisfactory/easysteamcmd.bat"
set "soldat=./game-configs/soldat/easysteamcmd.bat"
set "sons-of-the-forest=./game-configs/sons-of-the-forest/easysteamcmd.bat"
set "soulmask=./game-configs/soulmask/easysteamcmd.bat"
set "sven-co-op=./game-configs/sven-co-op/easysteamcmd.bat"
set "team-fortress-2=./game-configs/team-fortress-2/easysteamcmd.bat"
set "unturned=./game-configs/unturned/easysteamcmd.bat" 
set "valheim=./game-configs/valheim/easysteamcmd.bat"
set "v-rising=./game-configs/v-rising/easysteamcmd.bat"

rem Get user input (example: "7daytoedie" or "conan-exiles")
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
if defined %game_choice% (
  if exist "!%game_choice%!" (
    echo Launching "%game_choice%"...
    call "!%game_choice%!" 
  ) else (
    echo Error: Invalid game choice.
  )
) else (
  echo Please enter a valid game name.
)

endlocal