@echo off
rem Opens Pixel Face fullscreen with no browser toolbar or frame. Exit with Alt+F4.
set "PAGE=%~dp0pixel-face.html"
set "PROFILE=%TEMP%\pixel-face-kiosk"

set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if exist "%CHROME%" goto chrome

set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if exist "%EDGE%" goto edge

echo Chrome or Edge was not found. Opening in your default browser instead.
echo Press Enter on the page (or F11) to go fullscreen.
start "" "%PAGE%"
exit /b

:chrome
start "" "%CHROME%" --kiosk --autoplay-policy=no-user-gesture-required --user-data-dir="%PROFILE%" --no-first-run --no-default-browser-check --disable-session-crashed-bubble "%PAGE%"
exit /b

:edge
start "" "%EDGE%" --kiosk "%PAGE%" --edge-kiosk-type=fullscreen --autoplay-policy=no-user-gesture-required --user-data-dir="%PROFILE%" --no-first-run
exit /b
