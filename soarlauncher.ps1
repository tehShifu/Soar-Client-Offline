$host.UI.RawUI.WindowTitle = "Soar Client Cracked"

function green {
    process {Write-Host $_ -ForegroundColor Green }
}

function red {
    process {Write-Host $_ -ForegroundColor Red }
}


echo 
"


 ______     ______     ______     ______    
/\  ___\   /\  __ \   /\  __ \   /\  == \   
\ \___  \  \ \ \/\ \  \ \  __ \  \ \  __<   
 \/\_____\  \ \_____\  \ \_\ \_\  \ \_\ \_\ 
  \/_____/   \/_____/   \/_/\/_/   \/_/ /_/ 
                                            
                                                    
           Launcher by Shifuu#6900                                   

" | green

echo "                Information" | red
echo "
1) If you have custom directory for soar, edit soarDir variable
2) Default launch memory is set to 2G, change it by editing the launch command
" | red

$gameDir = "$env:userprofile\APPDATA\Roaming\.soarclient\game"
$soarDir = (Resolve-Path "$env:userprofile\APPDATA\Roaming\.soarclient")
$javaJre = (Resolve-Path "$soarDir\jre")[0]
echo "

Current path to Soar = $soarDir

"
$gdirQ = Read-Host -Prompt "Do you want use a custom game directory? [y/n]: "
if ($gdirQ -eq 'y') { 
  $gameDir = Read-Host -Prompt "Insert path to minecraft folder"
  if (Test-Path -Path "$gameDir\soar") {
    echo "Soar folder exists already, proceeding."
  }else {
    echo "
    Please wait while we set up your custom directory...
    "
    Copy-Item -Path "$soarDir\game\soar" -Destination "$gameDir" -Recurse -PassThru -Force | Out-Null
    Copy-Item -Path "$soarDir\game\options.txt" -Destination "$gameDir" -Recurse -PassThru -Force | Out-Null
    Copy-Item -Path "$soarDir\game\optionsof.txt" -Destination "$gameDir" -Recurse -PassThru -Force | Out-Null
    Copy-Item -Path "$soarDir\game\usercache.json" -Destination "$gameDir" -Recurse -PassThru -Force | Out-Null

    echo "
    Game directory set to $gameDir
    "
    }
}else {
  $gameDir = "$soarDir\game"
  echo "Using default soar game directory"
} 

$playerName = Read-Host -Prompt "Username you wanna play with"

echo "

Username: $playerName
Game directory: $gameDir

Launching Soar Client 1.8.9...
  
" | green

cd "$soarDir"
$launchArgs =  "-Xms2G", "-Xmx4000m", "-Xmn768m", "-XX:+DisableAttachMechanism", "-Djava.library.path=$soarDir\natives", "-cp", "$soarDir\libraries\authlib-1.5.21.jar;$soarDir\libraries\codecjorbis-20101023.jar;$soarDir\libraries\codecwav-20101023.jar;$soarDir\libraries\commons-codec-1.9.jar;$soarDir\libraries\commons-compress-1.8.1.jar;$soarDir\libraries\commons-io-2.4.jar;$soarDir\libraries\commons-lang3-3.3.2.jar;$soarDir\libraries\commons-logging-1.1.3.jar;$soarDir\libraries\gson-2.2.4.jar;$soarDir\libraries\guava-17.0.jar;$soarDir\libraries\httpclient-4.3.3.jar;$soarDir\libraries\httpcore-4.3.2.jar;$soarDir\libraries\icu4j-core-mojang-51.2.jar;$soarDir\libraries\jinput-2.0.5.jar;$soarDir\libraries\jinput-platform-2.0.5-natives-windows.jar;$soarDir\libraries\jna-3.4.0.jar;$soarDir\libraries\jopt-simple-4.6.jar;$soarDir\libraries\jutils-1.0.0.jar;$soarDir\libraries\launchwrapper-1.12.jar;$soarDir\libraries\libraryjavasound-20101123.jar;$soarDir\libraries\librarylwjglopenal-20100824.jar;$soarDir\libraries\log4j-api-2.0-beta9.jar;$soarDir\libraries\log4j-core-2.0-beta9.jar;$soarDir\libraries\lwjgl-2.9.4-nightly-20150209.jar;$soarDir\libraries\lwjgl-platform-2.9.4-nightly-20150209-natives-windows.jar;$soarDir\libraries\lwjgl_util-2.9.4-nightly-20150209.jar;$soarDir\libraries\netty-1.8.8.jar;$soarDir\libraries\netty-all-4.0.23.Final.jar;$soarDir\libraries\optifine.jar;$soarDir\libraries\oshi-core-1.1.jar;$soarDir\libraries\platform-3.4.0.jar;$soarDir\libraries\realms-1.7.59.jar;$soarDir\libraries\SoarClient.jar;$soarDir\libraries\soundsystem-20120107.jar;$soarDir\libraries\twitch-6.5.jar;$soarDir\libraries\twitch-external-platform-4.5-natives-windows-64.jar;$soarDir\libraries\twitch-platform-6.5-natives-windows-64.jar;$soarDir/*", "net.minecraft.launchwrapper.Launch", "--accessToken", "0", "--version", "1.8.9", "--username", "$playerName", "--uuid", "0", "--gameDir", "$gameDir", "--assetsDir", "$soarDir\assets", "--assetIndex", "1.8", "--tweakClass", "me.eldodebug.global.injection.mixin.SoarTweaker"

& "$javaJre\bin\java.exe" $launchArgs
