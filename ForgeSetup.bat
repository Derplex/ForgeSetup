@echo off
cd C:\temp

echo Checking if you did thing correctly...

echo Downloading jar...
powershell -Command "Invoke-WebRequest https://maven.minecraftforge.net/net/minecraftforge/forge/%1%/forge-%1%-installer.jar -OutFile forge.jar"

echo Checking for jar...
pause
if NOT EXIST "C:\temp\forge.jar" (
	goto noforge
)

echo Running jar...
java -Xms2G -Xmx2G -jar forge.jar
echo Cleaning up...
del C:\temp\forge.jar
echo Done!
pause
exit;


:noforge
echo Cannot download forge! Contact me on Discord!
pause
exit;