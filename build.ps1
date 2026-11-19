# Gera o site completo (português + inglês) em _site, igual ao que o GitHub publica.
# Uso no PowerShell, dentro da pasta do repositório:  .\build.ps1
quarto render
quarto render --profile en
Copy-Item -Recurse -Force _site-en\en _site\en
Write-Host "Site gerado em _site. Para visualizar: python -m http.server 8000 --directory _site"
