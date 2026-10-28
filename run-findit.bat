@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul
if not errorlevel 1 (
  start "" /b py -m http.server 8000 --bind 127.0.0.1
  timeout /t 2 /nobreak >nul
  start "" "http://127.0.0.1:8000/index.html"
  echo FindIt is running. Keep this window open; press Ctrl+C to stop it.
  pause >nul
  exit /b
)
where python >nul 2>nul
if not errorlevel 1 (
  start "" /b python -m http.server 8000 --bind 127.0.0.1
  timeout /t 2 /nobreak >nul
  start "" "http://127.0.0.1:8000/index.html"
  echo FindIt is running. Keep this window open; press Ctrl+C to stop it.
  pause >nul
  exit /b
)
echo FindIt needs Python 3 to launch all pages with shared browser storage.
echo Install Python 3, then double-click this file again.
pause
