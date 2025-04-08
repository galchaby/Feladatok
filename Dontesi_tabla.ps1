# Teljesítmény bekérése és szűrése
$tel = Read-Host "Kérem adja meg a teljesítményét"

$tel = [int]$tel

if ($tel -le 10) {
    Write-Host "Sajnos, önnek nem jár bónusz"
    exit 0
}

# Inputok bekérése a felhasználótól
$ido = Read-Host "Kérem adja meg hány éve van a cégnél"
$poz = Read-Host "Kérem adja meg a pozicióját (mérnök/középvezető/felsővezető)"

# Értékek konvertálása
$ido = [int]$ido
$poz = [string]$poz

# Szűrés pozíció alapján
if ($poz -eq "mérnök") {
    [int]$kat1 = "20"
} elseif ($poz -eq "középvezető") {
    [int]$kat1 = "35"
} elseif ($poz -eq "felsővezető") {
    [int]$kat1 = "50"
} else {
    Write-Host "Érvénytelen pozíció"
    exit 0
}

# Szűrés eltöltött idő alapján
if ($ido -lt 10) {
    $kat2 = "0"
} elseif ($ido -gt 10 -and $ido -le 20) {
    $kat2 = "15"
} elseif ($ido -gt 20) {
    $kat2 = "30"
}

# Bonusz kiszámítása
$bonusz = $kat1 + $kat2

Write-Host "Ön $bonusz% bónuszra jogosult!"