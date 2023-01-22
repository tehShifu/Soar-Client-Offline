# Soar-Client-Offline
Next generation pvp client developed by Eldodebug. Launcher for offline users 
https://soar-client.github.io/

All instructions in text file.

<h2 align="center">Launcher</h2>

<p align="center">
  <img width="479" height="308" src="https://i.imgur.com/XssbvOK.png">
</p>

<h4 align="center">Screenshot</h4>

![alt text](https://i.imgur.com/TDDJAz9.png)

![alt text](https://i.imgur.com/HwPrrOV.png)

<h2 align="center">How it works</h2>

Normally soar launches using Bootstrap.jar which downloads all files, puts them in their directories and then it creates an array. All arguments are added to this array to get the full launch command.

Here's what that looks like (Debug is not part of original code)

<p align="center">
  <img width="479" height="407" src="https://i.imgur.com/YeG2rlz.png">
</p>

The issue with this for cracked users is that while the default username is set to "Soar User" by a string, normal users can login to their microsoft accounts after startup but cracked users do not have this option and are stuck with "Soar User".

<p align="center">
  <img width="363" height="127" src="https://i.imgur.com/nv4GMxU.png">
</p>

This launcher completely bypasses the bootstrap.jar & solarclient.exe and instead directly provides all arguments, libraries and directories. It also for allows custom username using a variable($playerName) that is applied to --username argument.

<h3>Directories</h3>

CLIENT_DIR = %appdata%\\.soarclient\
JAVA_DIR = CLIENT_DIR\jre\
LIBRARIES_DIR = CLIENT_DIR\libraries\
NATIVES_DIR = CLIENT_DIR\natives\
GAME_DIR = CLIENT_DIR\game\
ASSETS_DIR = CLIENT_DIR\assets\
TEMP_DIR = CLIENT_DIR\temp

![alt text](https://i.imgur.com/digAlk0.png)

   
<h3>Libraries</h3>

authlib-1.5.21.jar\
codecjorbis-20101023.jar\
codecwav-20101023.jar\
commons-codec-1.9.jar\
commons-compress-1.8.1.jar\
commons-io-2.4.jar\
commons-lang3-3.3.2.jar\
commons-logging-1.1.3.jar\
gson-2.2.4.jar\
guava-17.0.jar\
httpclient-4.3.3.jar\
httpcore-4.3.2.jar\
icu4j-core-mojang-51.2.jar\
jinput-2.0.5.jar\
jinput-platform-2.0.5-natives-windows.jar\
jna-3.4.0.jar\
jopt-simple-4.6.jar\
jutils-1.0.0.jar\
launchwrapper-1.12.jar\
libraryjavasound-20101123.jar\
librarylwjglopenal-20100824.jar\
log4j-api-2.0-beta9.jar\
log4j-core-2.0-beta9.jar\
lwjgl-2.9.4-nightly-20150209.jar\
lwjgl-platform-2.9.4-nightly-20150209-natives-windows.jar\
lwjgl_util-2.9.4-nightly-20150209.jar\
netty-1.8.8.jar\
netty-all-4.0.23.Final.jar\
optifine.jar\
oshi-core-1.1.jar\
platform-3.4.0.jar\
realms-1.7.59.jar\
SoarClient.jar\
soundsystem-20120107.jar\
twitch-6.5.jar\
twitch-external-platform-4.5-natives-windows-64.jar\
twitch-platform-6.5-natives-windows-64.jar


