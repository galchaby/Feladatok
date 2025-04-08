# Életkor bekérése a felhasználótól
$eletkor = read-host "Kérem adja meg az életkorát"

# Egész számmá alakítás
$eletkor = [int]$eletkor

# Szűrés életkor alapján
if ($eletkor -le 17) {
    Write-Host "Nem jogosult a vásárlásra!"
} elseif ($eletkor -le 59) {
    Write-Host "Üdvözlünk a boltban!"
} elseif ($eletkor -ge 60) {
    Write-Host "Üdvözlünk a boltban, keresd a kedvezményeket!"
}