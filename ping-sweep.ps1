param([string[]]$Adresses)

foreach ($ip in $Adresses) {
    Test-Connection -ComputerName $ip -Count 1 -Quiet -ErrorAction SilentlyContinue
}
