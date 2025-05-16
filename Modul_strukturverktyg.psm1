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


}