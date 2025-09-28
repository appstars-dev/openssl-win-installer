cd %~dp0..
set BTARCH=win32
C:
cd C:\
mkdir -p openssl-src\%BTARCH%
cd openssl-src\%BTARCH%
set VCINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC
rem Need a version i.e. 3.5.3
set /P OSSLV="TYPE VERSION:"
set COMPILEDIR=c:\openssl-build\openssl-%OSSLV%-%BTARCH%
curl -LJO https://github.com/openssl/openssl/releases/download/openssl-%OSSLV%/openssl-%OSSLV%.tar.gz 
rem %~dp0wget.exe --content-disposition https://github.com/openssl/openssl/releases/download/openssl-%OSSLV%/openssl-%OSSLV%.tar.gz
tar xvfz openssl-%OSSLV%.tar.gz
del openssl-%OSSLV%.tar.gz
cd openssl-%OSSLV%
set OSSLARCH=VC-WIN32
rem VC-WIN32 VC-WIN32-ARM VC-WIN32-ONECORE VC-WIN64-ARM VC-WIN64A VC-WIN64A-ONECORE VC-WIN64A-masm VC-WIN64I
set BTARCH=x86
rem x86, x86_amd64, x86_x64, x86_arm, x86_arm64, amd64, x64, x64_arm64, amd64_x86, x64_x86, amd64_arm, x64_arm, amd64_arm64, x64_arm64, x64_arm64, arm64,arm64_amd64,arm64_x64,arm64_x86,arm64_arm
call "%VCINSTALLDIR%\Auxiliary\Build\vcvarsall.bat" %BTARCH% %*
perl Configure VC-WIN32 --prefix=%COMPILEDIR%
nmake
nmake install
pause
