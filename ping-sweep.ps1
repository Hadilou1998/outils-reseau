param([string[]]$Adresses)

if (-not $Adresses -or $Adresses.Count -eq 0) {
    Write-Warning "Aucune adresse fournie : aucun test effectue."
    return
}

foreach ($ip in $Adresses) {
    $Repond = Test-Connection -ComputerName $ip -Count 1 -Quiet -ErrorAction SilentlyContinue
    [PSCustomObject]@{
        Adresse = $ip
        Repond = [bool]$Repond
    }
}
