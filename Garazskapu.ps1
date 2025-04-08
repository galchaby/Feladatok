# Távirányító bemenetek
# 1. Nyitás
# 2. Zárás
# 3. Stop
# 4. Kilépés

# Alapállapot meghatározása
$allapot = "zarva"


while ($true) {
    if ($allapot -eq "zarva") {
        Write-Host "Zárva"
        $bemenet = Read-Host "1.Nyitás/4.Kilépés"
        if ($bemenet -eq "1") {
            $allapot = "nyitas"
        } elseif ($bemenet -eq "4") {
            exit 0
        }
        
    } elseif ($allapot -eq "nyitas") {
        Write-Host "Nyitás"
        $bemenet = Read-Host "2.Zárás/3.Stop/4.Kilépés"
        if ($bemenet -eq "2") {
            $allapot = "zaras"
        } elseif ($bemenet -eq "3") {
            $allapot = "stop"
        } elseif ($bemenet -eq "4") {
            exit 0
        }
    } elseif ($allapot -eq "zaras") {
        Write-Host "Zárás"
        $bemenet = Read-Host "1.Nyitás/3.Stop/4.Kilépés"
        if ($bemenet -eq "1") {
            $allapot = "nyitas"
        } elseif ($bemenet -eq "3") {
            $allapot = "stop"
        } elseif ($bemenet -eq "4") {
            exit 0
        }
    } elseif ($allapot -eq "stop") {
        Write-Host "Stop"
        $bemenet = Read-Host "1.Nyitás/2.Zárás/4.Kilépés"
        if ($bemenet -eq "1") {
            $allapot = "nyitas"
        } elseif ($bemenet -eq "2") {
            $allapot = "zaras"
        } elseif ($bemenet -eq "4") {
            exit 0
        }
    } elseif ($allapot -eq "nyitva") {
        Write-Host "Nyitva"
        $bemenet = Read-Host "2.Zárás/4.Kilépés"
        if ($bemenet -eq "2") {
            $allapot = "zaras"
        } elseif ($bemenet -eq "4") {
            exit 0
        }
    }
}