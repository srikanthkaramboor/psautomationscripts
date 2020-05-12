#!/bin/bash

# Custom sCRIPT


Add-WindowsFeature Web-Server
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Azure-GreatLearning $($env:computername) !"
New-Item C:\inetpub\wwwroot\index.html -ItemType File
Set-Content C:\inetpub\wwwroot\index.html '<html>Azure-GreatLearning</html>'
Add-WebConfigurationProperty //defaultDocument/files "IIS:\sites\Default Web Site" -AtIndex 0 -Name collection -Value "index.html"
