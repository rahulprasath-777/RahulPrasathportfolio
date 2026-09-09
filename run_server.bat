@echo off
cd /d "%~dp0"
echo Starting web server on http://localhost:8000
python -m http.server 8000 || py -m http.server 8000 || python3 -m http.server 8000
pause
