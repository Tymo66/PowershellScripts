﻿[string]$nginx_config = "C:\nginx-1.17.5\conf\nginx.conf"


if (!(Test-Path $nginx_config))
{
    Write-Warning "$nginx.config not found in folder C:\nginx-1.17.5\conf"
}

[string]$nginx_config_content = ""
$nginx_config_content = Get-Content -path $nginx_config -Raw

$nginx_config_content -replace 'noldusdemo.cert.pem', 'Tijmen' | Set-Content -Path $nginx_config
