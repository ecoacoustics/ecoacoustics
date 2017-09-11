$node = $false
if ((Get-Command node*) -and (Get-Command browser-sync*)) { 
    $node = $true
    # reload when feed.xml is written, because it is last updated
    $p = Start-Process browser-sync -ArgumentList 'start --proxy "localhost:4000" --files "_site/feed.xml"' -NoNewWindow -PassThru
} 
else { 
    Write-Warning "Automatic page reloading is not enabled because node is not installed."
}

try {
    ruby "$PSScriptRoot/jekyll" serve --watch
}
finally {
    if ($node) {
        Stop-Process $p -Force
    }
}