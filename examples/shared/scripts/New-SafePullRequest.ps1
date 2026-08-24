param(
    [Parameter(Mandatory)]
    [string]$Agent,

    [Parameter(Mandatory)]
    [string]$Branch,

    [Parameter(Mandatory)]
    [string]$Title,

    [string]$Base = "main"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Git is required."
}

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is required."
}

if (git status --porcelain) {
    throw "The working tree must be clean before creating a branch."
}

git fetch origin $Base
git switch -c $Branch "origin/$Base"

Write-Host "Branch '$Branch' created for $Agent."
Write-Host "Make and validate changes, then run:"
Write-Host "  git add <files>"
Write-Host "  git commit -m `"<message>`""
Write-Host "  git push -u origin $Branch"
Write-Host "  gh pr create --base $Base --head $Branch --title `"$Title`""
