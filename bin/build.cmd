@ECHO OFF

SET DIR_ICONPACK="iconpack\"
SET DIR_STYLE="style\"
SET DIR_DIST="dist\"
SET ARCHIVE_ICONPACK="dark.ts3_iconpack"
SET ARCHIVE_STYLE="dark.ts3_style"
SET ARCHIVE_ADDON="dark.ts3_addon"
SET ZIP_PATH="C:\Program Files\7-Zip\7z.exe"

REM Switch to bin dir
pushd %~dp0

REM ------------------------------------
REM  Cleanup
REM ------------------------------------

echo.
echo Running cleanup tasks
echo.

cd ..
cd %DIR_DIST%
echo  - Removing old icon pack archive...
IF EXIST %ARCHIVE_ICONPACK% DEL %ARCHIVE_ICONPACK%
echo  - Removing old style archive...
IF EXIST %ARCHIVE_STYLE% DEL %ARCHIVE_STYLE%
echo  - Removing old addon archive...
IF EXIST %ARCHIVE_ADDON% DEL %ARCHIVE_ADDON%

REM ------------------------------------
REM  Build Packages
REM ------------------------------------

echo.
echo Building packages
echo.

echo  - Building icon pack archive...
cd ..
cd %DIR_ICONPACK%
%ZIP_PATH% a -bd -tzip ..\dist\%ARCHIVE_ICONPACK% package.ini gfx
echo.
cd ..
echo  - Building style archive...
cd %DIR_STYLE%
%ZIP_PATH% a -bd -tzip ..\dist\%ARCHIVE_STYLE% package.ini styles
echo.
cd ..
echo  - Building addon archive...
cd %DIR_ICONPACK%
%ZIP_PATH% a -bd -tzip ..\dist\%ARCHIVE_ADDON% gfx
cd ..
cd %DIR_STYLE%
%ZIP_PATH% a -bd -tzip ..\dist\%ARCHIVE_ADDON% styles
cd ..
%ZIP_PATH% a -bd -tzip dist\%ARCHIVE_ADDON% package.ini
echo.

REM Return to previous dir
popd
