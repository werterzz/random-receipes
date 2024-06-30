(cat .\recipes.txt) | % {$recipes=$()} {$recipes+=@($_)} {$index=Get-Random -Maximum $recipes.count; $recipes[$index]; sleep 3
