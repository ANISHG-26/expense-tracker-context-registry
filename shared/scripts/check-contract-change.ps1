$ErrorActionPreference = "Stop"

try {
    $root = git rev-parse --show-toplevel 2>$null
} catch {
    Write-Host "Not a git repository. Skipping contract check."
    exit 0
}

Set-Location $root
$contractPath = "Context Repository/contracts/expense-tracker/openapi.yaml"
$staged = git diff --name-only --cached

if (-not $staged) {
    exit 0
}

$changed = $staged -split "`n" | ForEach-Object { $_.Trim() } | Where-Object { $_ }

if ($changed -notcontains $contractPath) {
    exit 0
}

$hasBackend = $changed | Where-Object { $_ -like "Backend/*" }
$hasFrontend = $changed | Where-Object { $_ -like "Frontend/*" }

if (-not $hasBackend -and -not $hasFrontend) {
    Write-Host "OpenAPI contract changed but no Backend/ or Frontend/ files are staged."
    Write-Host "Update services or split commits to keep changes aligned."
    exit 1
}
