# Funktion för modulen starta-strukturverktyg
Function Starta-Strukturverktyg {

# Döp huvudmapp
    $namn = Read-Host "Ange ett namn på mappen"
    Write-Host "Du angav: $namn"

# Skapa mapp med namnet som anges
    $stig = "./$namn"

 try {
        New-Item -ItemType Directory -Path $stig -ErrorAction Stop
        Write-Host "Mappen skapades: $stig"
    }
    catch {
        Write-Host "Mappen finns redan: $stig"
    }

 # Skapar undermappar
    $undermappar = @("logs", "scripts", "temp")

    foreach ($mapp in $undermappar) {
    $fullStig = Join-Path -Path $stig -ChildPath $mapp
    New-Item -ItemType Directory -Path $fullStig
    }
# Skapa en loggfil med datum och tid
    $tidstempel = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $datum = Get-Date -Format "yyyy-MM-dd"  # Du hade glömt att definiera $datum
    $loggfil = Join-Path -Path $stig -ChildPath "logs/log_$datum.txt"

    Add-Content -Path $loggfil -Value "Struktur skapad: $tidstempel"

}