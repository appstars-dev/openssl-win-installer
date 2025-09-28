rem cd %~dp0\..
set BTARCH=win64
C:
cd C:\
mkdir -p openssl-src\%BTARCH%
cd openssl-src\%BTARCH%
set VCINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC
rem Need a version i.e. w
set /P OSSLV="TYPE VERSION:"
set COMPILEDIR=c:\openssl-build\openssl-1.1.1%OSSLV%-%BTARCH%
curl -LJO https://github.com/openssl/openssl/releases/download/OpenSSL_1_1_1%OSSLV%/openssl-1.1.1%OSSLV%.tar.gz
rem %~dp0wget.exe --content-disposition https://github.com/openssl/openssl/releases/download/openssl_1_1_1%OSSLV%/openssl-1.1.1%OSSLV%.tar.gz
tar xvfz openssl-1.1.1%OSSLV%.tar.gz
del openssl-1.1.1%OSSLV%.tar.gz
cd openssl-1.1.1%OSSLV%
set OSSLARCH=VC-WIN64A
rem VC-WIN32 VC-WIN32-ARM VC-WIN32-ONECORE VC-WIN64-ARM VC-WIN64A VC-WIN64A-ONECORE VC-WIN64A-masm VC-WIN64I
set BTARCH=x64
rem x86, x86_amd64, x86_x64, x86_arm, x86_arm64, amd64, x64, x64_arm64, amd64_x86, x64_x86, amd64_arm, x64_arm, amd64_arm64, x64_arm64, x64_arm64, arm64,arm64_amd64,arm64_x64,arm64_x86,arm64_arm
call "%VCINSTALLDIR%\Auxiliary\Build\vcvarsall.bat" %BTARCH% %*
perl Configure VC-WIN64A --prefix=%COMPILEDIR%
nmake
nmake install
pause
