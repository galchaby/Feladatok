# Életkor bekérése a felhasználótól
$eletkor = read-host "Kérem adja meg az életkorát"

# Kereset bekérése a felhasználótól
$kereset = Read-Host "Kérem adja meg a keresetét"

# Egész számmá alakítás
$eletkor = [int]$eletkor
$kereset = [int]$kereset

# Szűrés életkor alapján
if ($eletkor -ge 1 -and $eletkor -le 14) {
    $kat1 = "A"
} elseif ($eletkor -ge 15 -and $eletkor -le 25) {
    $kat1 = "B"
} elseif ($eletkor -ge 26 -and $eletkor -le 60) {
    $kat1 = "C"
} elseif ($eletkor -gt 60) {
    $kat1 = "D"
}

# Szűrés kereset alapján
if ($kereset -le 100000) {
    $kat2 = "1"
} elseif ($kereset -gt 100000 -and $kereset -le 1000000) {
    $kat2 = "2"
} elseif ($kereset -gt 1000000) {
    $kat2 = "3"
}
Write-Host "$kat1$kat2 kategória"
