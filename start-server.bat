@echo off
title Arraycode Digital Visiting Card Server
echo ========================================================
echo   Starting Arraycode Digital Visiting Card Preview...
echo ========================================================
echo.
echo Opening http://localhost:3000 in your browser...
start http://localhost:3000

REM Try Node.js first, then Python 3, then PowerShell
where node >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Using Node.js server...
    npx -y serve -p 3000 -s .
    goto end
)

where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Using Python 3 server...
    python -m http.server 3000
    goto end
)

echo Using PowerShell web server...
powershell -ExecutionPolicy Bypass -Command "& { Write-Host 'Listening on http://localhost:3000...'; $listener = New-Object System.Net.HttpListener; $listener.Prefixes.Add('http://localhost:3000/'); $listener.Start(); while ($listener.IsListening) { $ctx = $listener.GetContext(); $req = $ctx.Request; $res = $ctx.Response; $path = '.' + $req.RawUrl.Split('?')[0]; if ($path -eq './') { $path = './index.html' }; if (Test-Path $path) { $bytes = [System.IO.File]::ReadAllBytes($path); $res.ContentLength64 = $bytes.Length; $res.OutputStream.Write($bytes, 0, $bytes.Length) } else { $res.StatusCode = 404 }; $res.OutputStream.Close() } }"

:end
pause

