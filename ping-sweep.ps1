param([string[]]$Adresses)

foreach ($ip in $Adresses) {
    $Repond = Test-Connection -ComputerName $ip -Count 1 -Quiet -ErrorAction SilentlyContinue
    [PSCustomObject]@{
        Adresse = $ip
        Repond = [bool]$Repond
    }
}
