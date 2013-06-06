@echo off
echo Get pyclewn....
.\wget.exe http://jaist.dl.sourceforge.net/project/pyclewn/pyclewn-1.10/pyclewn-1.10.py3.win32-py3.2.exe
echo Get python-3.2 and Python for Windows extensions....
if /i "%PROCESSOR_IDENTIFIER:~0,3%" == "X86" goto 1 
if /i "%PROCESSOR_IDENTIFIER:~0,3%" NEQ "X86" goto 2 
:1
echo Downloading x86 version...
.\wget.exe http://www.python.org/ftp/python/3.2.5/python-3.2.5.msi
.\wget.exe  "http://sourceforge.net/projects/pywin32/files/pywin32/Build 218/pywin32-218.win32-py3.2.exe/download"
goto 3
:2
echo Downloading x86_64 version...
.\wget.exe http://www.python.org/ftp/python/3.3.2/python-3.3.2.amd64.msi 
.\wget.exe "http://sourceforge.net/projects/pywin32/files/pywin32/Build%20218/pywin32-218.win-amd64-py3.2.exe/download"
:3
echo Install Python3.2.....
python-3.2.5.msi
echo done
echo Install  Python for Windows extensions....
pywin32-218.win32-py3.2.exe
echo done
echo Install pyclewn....
pyclewn-1.10.py3.win32-py3.2.exe
echo done
echo Please delete the file in VIMFIlE path which are autoinstalled by the  pyclewn-1.10.py3.win32-py3.2.exe
echo Enjoy
echo -------by tracyone
pause
