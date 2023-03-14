::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpYSRy+GG6pDaET+NTJ4OiLrVVPBLNpTIrDzqGcJdAS6U7YfJUi2DRTm8Rs
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpYSRy+GG6pDaET+NTJ4OiLrVVPBLNpTIrDzqGcJdAS6U7AcIAI0nNOkcQCMDJWbQaqYgMxuyBHrmHl
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

if exist %localappdata%\Roblox\Versions\"version-7b56ddc3755a46c6"\ (
    echo Found valid Roblox version.
) else (
    goto iver
)
echo Shutting down Roblox processes...
taskkill /f /im robloxplayerbeta.exe
echo Done.

echo Copying files to the Roblox folder...
xcopy common %localappdata%\Roblox\Versions\"version-7b56ddc3755a46c6"\content\textures\ui\common\ /y
xcopy Cursor %localappdata%\Roblox\Versions\"version-7b56ddc3755a46c6"\content\textures\Cursors\KeyboardMouse\ /y
xcopy PlayerList %localappdata%\Roblox\Versions\"version-7b56ddc3755a46c6"\content\textures\ui\PlayerList\ /y
xcopy sounds %localappdata%\Roblox\Versions\"version-7b56ddc3755a46c6"\content\sounds\ /y
xcopy TopBar %localappdata%\Roblox\Versions\"version-7b56ddc3755a46c6"\content\textures\ui\TopBar\ /y
echo Done.

cls
echo Installation completed successfully.
echo Thank you for using the Roblox 2016 Texture Pack.
timeout /t 10 /nobreak > NUL
exit

:iver
cls
echo Installer could not find valid Roblox installation (Version 7b56ddc3755a46c6)
echo Make sure you have the correct version of the installer availible and try again.
pause