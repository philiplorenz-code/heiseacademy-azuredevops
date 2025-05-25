# Parameter
$webhookUrl = "https://dev.azure.com/heiseacademy-azuredevops/_apis/public/distributedtask/webhooks/HeiseTest?api-version=6.0-preview"
$secret = "SuperSicher123!"
$headerName = "x-philip"

# JSON-Payload
$payload = @{
    resource = @{
        message = @{
            name    = "Philip"
            kursname = "Azure DevOps"
        }
    }
} | ConvertTo-Json -Depth 5

# Byte-Kodierung des Payloads
$encoding = New-Object System.Text.UTF8Encoding
$payloadBytes = $encoding.GetBytes($payload)
$secretBytes = $encoding.GetBytes($secret)

# HMAC SHA1 berechnen
$hmacsha1 = New-Object System.Security.Cryptography.HMACSHA1
$hmacsha1.Key = $secretBytes
$hashBytes = $hmacsha1.ComputeHash($payloadBytes)

# In Hex-String umwandeln
$signature = -join ($hashBytes | ForEach-Object { $_.ToString("x2") })

# Header mit Signatur
$headers = @{
    $headerName = $signature
    "Content-Type" = "application/json"
}

# Anfrage senden
$response = Invoke-RestMethod -Uri $webhookUrl -Method Post -Body $payload -Headers $headers -ErrorAction Stop