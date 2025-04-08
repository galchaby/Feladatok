# Életkor bekérése a felhasználótól
$eletkor = read-host "Kérem adja meg az életkorát"

# Egész számmá alakítás
$eletkor = [int]$eletkor

# Szűrés életkor alapján
if ($eletkor -ge 1 -and $eletkor -le 14) {
    Write-Host "A kategória!"
} elseif ($eletkor -ge 15 -and $eletkor -le 25) {
    Write-Host "B kategória!"
} elseif ($eletkor -ge 26 -and $eletkor -le 60) {
    Write-Host "c kategória!"
} elseif ($eletkor -gt 60) {
    Write-Host "D kategória!"
}