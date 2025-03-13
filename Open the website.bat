@echo off
setlocal

set "chromePath=C:\Program Files\Google\Chrome\Application\chrome.exe"
set "htmlFile=index.html"
set "vbsFile=open_site.vbs"

if not exist "%chromePath%" (
  echo Chrome n'est pas installé à l'emplacement par défaut.
  pause
  exit /b
)

if not exist "%htmlFile%" (
  echo Le fichier HTML "%htmlFile%" est introuvable.
  pause
  exit /b
)

if not exist "%vbsFile%" (
  echo Le fichier VBS "%vbsFile%" est introuvable.
  pause
  exit /b
)

start "" "%vbsFile%"
timeout /t 3 >nul  REM Attente de 3 secondes avant d'ouvrir Chrome

start "" "%chromePath%" "file://%cd%/%htmlFile%"

endlocal