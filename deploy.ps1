# Hexo Blog Deploy Script
# Usage: .\deploy.ps1
#
# Prerequisites:
#   1. Make sure you have set the deploy repo in _config.yml, e.g.:
#      deploy:
#        type: git
#        repo: https://github.com/<username>/<username>.github.io.git
#        branch: main
#   2. Install hexo-deployer-git if not already:
#      npm install hexo-deployer-git --save

param(
    [string]$Message = "Site updated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
)

$ErrorActionPreference = "Stop"

Write-Host "======================================" -ForegroundColor Cyan
Write-Host "  Hexo Blog Deploy Script" -ForegroundColor Cyan
Write-Host "======================================" -ForegroundColor Cyan
Write-Host ""

# Check if hexo-deployer-git is installed
$deployerInstalled = npm ls hexo-deployer-git 2>$null | Select-String "hexo-deployer-git"
if (-not $deployerInstalled) {
    Write-Host "[INFO] hexo-deployer-git not found, installing..." -ForegroundColor Yellow
    npm install hexo-deployer-git --save
    if ($LASTEXITCODE -ne 0) {
        Write-Host "[ERROR] Failed to install hexo-deployer-git" -ForegroundColor Red
        exit 1
    }
    Write-Host "[OK] hexo-deployer-git installed successfully" -ForegroundColor Green
}

# Step 1: Clean
Write-Host ""
Write-Host "[1/3] Cleaning old files..." -ForegroundColor Yellow
npx hexo clean
if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] hexo clean failed" -ForegroundColor Red
    exit 1
}

# Step 2: Generate static files
Write-Host ""
Write-Host "[2/3] Generating static files..." -ForegroundColor Yellow
npx hexo generate
if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] hexo generate failed" -ForegroundColor Red
    exit 1
}

# Step 3: Deploy to GitHub
Write-Host ""
Write-Host "[3/3] Deploying to GitHub..." -ForegroundColor Yellow
npx hexo deploy
if ($LASTEXITCODE -ne 0) {
    Write-Host "[ERROR] hexo deploy failed" -ForegroundColor Red
    Write-Host "[HINT] Make sure your _config.yml has the correct deploy config:" -ForegroundColor Yellow
    Write-Host @"
    deploy:
      type: git
      repo: https://github.com/<username>/<username>.github.io.git
      branch: main
"@ -ForegroundColor Gray
    exit 1
}

Write-Host ""
Write-Host "======================================" -ForegroundColor Green
Write-Host "  Deploy completed successfully!" -ForegroundColor Green
Write-Host "======================================" -ForegroundColor Green
