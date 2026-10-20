param(
    [string[]]$Adresses,
    [string]$Chemin = (Join-Path $PSScriptRoot "resultats.csv")
)

$Resultats = & (Join-Path $PSScriptRoot "ping-sweep.ps1") -Adresses $Adresses
$Resultats | Export-Csv -LiteralPath $Chemin -NoTypeInformation -Encoding UTF8
