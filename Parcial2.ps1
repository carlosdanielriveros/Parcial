for ($i = 1; $i -le 3; $i++) {

    $fechaHora = Get-Date
    Write-Host "Verificacion $i - Fecha y hora: $fechaHora"

    $adaptadores = Get-NetAdapter | Where-Object { $_.Status -eq "Up" }
    $adaptadores | Format-Table Name, Status

    if ($i % 2 -eq 0) {
        Write-Host "La iteracion $i es par."
    }
    else {
        Write-Host "La iteracion $i es impar."
    }

    Write-Host ""
}

Write-Host "El monitoreo de la red ha concluido con exito."