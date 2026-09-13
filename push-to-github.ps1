# One-time: log in to GitHub, then create repo and push.
# Run in PowerShell from this folder:
#   Set-ExecutionPolicy -Scope Process -Bypass
#   .\push-to-github.ps1

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

$gh = Get-Command gh -ErrorAction SilentlyContinue
if (-not $gh) {
    Write-Host "Installing GitHub CLI..."
    winget install --id GitHub.cli -e --accept-source-agreements --accept-package-agreements
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")
}

Write-Host "Checking GitHub login..."
gh auth status 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Log in to GitHub (browser will open)..."
    gh auth login -h github.com -p https -w
}

if (-not (Test-Path .git)) {
    git init -b main
    git add -A
    git commit -m "Add Cursor career-agent skill"
}

if (git remote get-url origin 2>$null) {
    Write-Host "Remote origin already set. Pushing..."
    git push -u origin main
} else {
    Write-Host "Creating public repo career-agent on GitHub and pushing..."
    gh repo create career-agent --public --source=. --remote=origin --push `
        --description "Cursor Agent skill for LinkedIn, job search, resume tailoring, and application drafts"
}

Write-Host ""
Write-Host "Done. Open: https://github.com/$(gh api user -q .login)/career-agent"
