# =====================================================================
# Script: ado-report.ps1
# Description: Quick status report for Azure DevOps Projects, Repos,
#              Pipelines and Recent Runs via Azure DevOps CLI.
# =====================================================================

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   AZURE DEVOPS ENVIRONMENT STATUS      " -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

Write-Host "`n[+] Checking Azure DevOps Configured Defaults..." -ForegroundColor Yellow
az devops configure --list -o table

Write-Host "`n[+] Listing Azure Repositories..." -ForegroundColor Yellow
az repos list -o table

Write-Host "`n[+] Listing Azure Pipelines..." -ForegroundColor Yellow
az pipelines list -o table

Write-Host "`n[+] Top 5 Latest Pipeline Runs..." -ForegroundColor Yellow
az pipelines runs list --top 5 -o table

Write-Host "`n[✓] Done! Status check completed successfully." -ForegroundColor Green
