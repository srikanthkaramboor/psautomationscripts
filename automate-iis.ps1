#!/bin/bash

# Custom sCRIPT


Add-WindowsFeature Web-Server
Set-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value "Azure-GreatLearning $($env:computername) !"

