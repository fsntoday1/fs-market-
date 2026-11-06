# FS Market BD - Lightweight Local Web Server
# Powered by Windows PowerShell & .NET HttpListener

$Port = 5000
$Prefix = "http://localhost:$Port/"
$RootPath = $PSScriptRoot

$MimeTypes = @{
    ".html" = "text/html; charset=utf-8"
    ".htm"  = "text/html; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".json" = "application/json; charset=utf-8"
    ".svg"  = "image/svg+xml"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".jpeg" = "image/jpeg"
    ".ico"  = "image/x-icon"
    ".woff2"= "font/woff2"
    ".woff" = "font/woff"
    ".ttf"  = "font/ttf"
}

$Listener = New-Object System.Net.HttpListener
$Listener.Prefixes.Add($Prefix)

try {
    $Listener.Start()
} catch {
    Write-Host "Port $Port is in use. Trying port 5173..." -ForegroundColor Yellow
    $Port = 5173
    $Prefix = "http://localhost:$Port/"
    $Listener = New-Object System.Net.HttpListener
    $Listener.Prefixes.Add($Prefix)
    $Listener.Start()
}

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   FS MARKET BD - ULTRA-MODERN LIQUID GLASS E-COMMERCE    " -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host " Server running at: $Prefix" -ForegroundColor White
Write-Host " Storefront & Admin Portal ready." -ForegroundColor Gray
Write-Host " Press Ctrl+C in this window to stop the server.`n" -ForegroundColor DarkGray

# Launch default browser
Start-Process $Prefix

try {
    while ($Listener.IsListening) {
        $Context = $Listener.GetContext()
        $Request = $Context.Request
        $Response = $Context.Response

        $Response.Headers.Add("Access-Control-Allow-Origin", "*")
        $Response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS")

        $UrlPath = $Request.Url.LocalPath.TrimStart('/')
        if ([string]::IsNullOrWhiteSpace($UrlPath)) {
            $UrlPath = "index.html"
        }

        $FilePath = Join-Path $RootPath ($UrlPath -replace '/', '\')

        if (Test-Path $FilePath -PathType Leaf) {
            $Ext = [System.IO.Path]::GetExtension($FilePath).ToLower()
            $ContentType = $MimeTypes[$Ext]
            if (-not $ContentType) { $ContentType = "application/octet-stream" }
            $Response.ContentType = $ContentType

            $Bytes = [System.IO.File]::ReadAllBytes($FilePath)
            $Response.ContentLength64 = $Bytes.Length
            $Response.OutputStream.Write($Bytes, 0, $Bytes.Length)
            $Response.StatusCode = 200
        } else {
            $Response.StatusCode = 404
            $NotFoundBytes = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found")
            $Response.OutputStream.Write($NotFoundBytes, 0, $NotFoundBytes.Length)
        }

        $Response.Close()
    }
} finally {
    $Listener.Stop()
    $Listener.Close()
}
