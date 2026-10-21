@echo off
rem Compila o mwtAC e gera build\mwtAC.jar (com o JNativeHook embutido).
cd /d "%~dp0"
if exist build rmdir /s /q build
mkdir build\classes build\fat
dir /s /b src\*.java > build\sources.txt
javac -encoding UTF-8 -cp lib\jnativehook-2.2.2.jar -d build\classes @build\sources.txt || exit /b 1
cd build\fat
jar xf ..\..\lib\jnativehook-2.2.2.jar
rmdir /s /q META-INF
cd ..\..
xcopy /e /y /q build\classes\* build\fat\ >nul
echo Main-Class: mwtac.Main> build\manifest.txt
jar cfm build\mwtAC.jar build\manifest.txt -C build\fat .
echo Pronto: build\mwtAC.jar
