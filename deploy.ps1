# .\deploy.ps1
# python -m mkdocs serve 
# Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

if (-not (Test-Path ".\mkdocs.yml")) {
    exit 1
}

git add .
git commit -m "update docs"
git push origin main

python -m mkdocs gh-deploy --force

Write-Host "✅ https://VoiceScriptPlayer.github.io/VoiceScriptPlayerDocs/"
