@echo off
COLOR 17
ECHO.                           MODDING TOOL SETUP 
ECHO.
echo.                   Due to file size limitation on Github
ECHO.
echo.                  I have had to host the file on dropbox
ECHO.
echo.                 I will now download that file and run the
ECHO.
echo.                       setup program automatically.
ECHO.
echo                          if you are happy with this
pause
set path="%cd%"
set PATH=%path%
set busybox=%path%\busybox.exe
echo Please Wait

wget -q --show-progress https://www.dropbox.com/s/7pw4kli5ftq59ku/modtoolsetup.exe?dl=0 -O modtoolsetup.exe  && echo Download success!
                      
start modtoolsetup.exe
ren .wget-hsts hosts
del hosts

echo. the setup is now complete
pause
del modtoolsetup.exe
del .wget-hsts


exit







