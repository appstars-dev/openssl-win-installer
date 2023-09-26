# openssl-win-installer

Windows installer script for openssl

To compile use:

1. Install Perl (Strawberry is better)
    
2. Install NASM
    
3. Make sure both Perl and NASM are on your %PATH%
    
4. Run a **Visual Studio Developer Command Prompt** with administrative privileges (make sure you use the 32-bit one if you are building 32-bit OpenSSL, or the 64-bit one if you are building 64-bit OpenSSL)

5. From the root of the OpenSSL source directory enter
    
    perl Configure VC-WIN32 --prefix=C:\Build-OpenSSL-VC-32
        
if you want 32-bit OpenSSL or 

    perl Configure VC-WIN64A --prefix=C:\Build-OpenSSL-VC-64

if you want 64-bit OpenSSL

6. Enter ```nmake```

7. Enter ```nmake test```

8. Enter ```nmake install```
