@echo off
setlocal enabledelayedexpansion

:: Source and destination directories
set src=C:\ISOs
set dest=E:\

:: Wildcard pattern for the files to copy
set pattern=*-SERVER_EVAL*.iso

:: Loop through files matching the pattern and copy them
for %%f in (%src%\%pattern%) do (
    echo Copying %%f to %dest%
    robocopy "%src%" "%dest%" "%%~nxf"
)

echo Copy complete.
pause

:: Explanation
:: setlocal enabledelayedexpansion         : Enables delayed expansion of variables within the loop.
:: set src=C:\ISOs                         : Sets the source directory where your ISO files are located.
:: set dest=E:\                            : Sets the destination directory.
:: set pattern=*-SERVER_EVAL*.iso          : Sets the wildcard pattern to match the files you want to copy.
:: for %%f in (%src%\%pattern%) do (...)   : Loops through each file in the source directory that matches the pattern.
:: robocopy "%src%" "%dest%" "%%~nxf"      : Copies each matched file to the destination directory using robocopy.

:: Reusability
:: To reuse the script for copying a different batch of ISO files:
:: - Modify the src variable to point to the new source directory if needed.
:: - Modify the dest variable to point to a different destination directory if needed.
:: - Change the pattern variable to match the new file pattern for the ISO files you want to copy.
