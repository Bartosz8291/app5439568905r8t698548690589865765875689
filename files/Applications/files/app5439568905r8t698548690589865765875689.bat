@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\natal\Desktop\Bartuœia\app5439568905r8t698548690589865765875689\app5439568905r8t698548690589865765875689.exe
REM BFCPEICON=
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=app5439568905r8t698548690589865765875689
REM BFCPEVERDESC=app5439568905r8t698548690589865765875689
REM BFCPEVERCOMPANY=000
REM BFCPEVERCOPYRIGHT=000
REM BFCPEWINDOWCENTER=1
REM BFCPEDISABLEQE=0
REM BFCPEWINDOWHEIGHT=30
REM BFCPEWINDOWWIDTH=120
REM BFCPEWTITLE=app5439568905r8t698548690589865765875689 running
REM BFCPEEMBED=C:\Users\natal\Desktop\Bartuœia\app5439568905r8t698548690589865765875689\app5439568905r8t698548690589865765875689.bat
REM BFCPEEMBED=C:\Users\natal\Desktop\Bartuœia\app5439568905r8t698548690589865765875689\start.ps1
REM BFCPEOPTIONEND
@echo off
title app5439568905r8t698548690589865765875689
echo runned!

rem Create the first VBScript file with a warning message
echo Set objShell = CreateObject("WScript.Shell") > warning.vbs
echo answer = MsgBox("Dont Copy!!!",4+48,"WARNING") >> warning.vbs
echo WScript.Quit answer >> warning.vbs

rem Run the first VBScript file and capture the result
start /wait wscript warning.vbs
set result=%errorlevel%

rem Check if the user clicked "Yes" (which returns 6)
if %result%==6 (
    rem Create the second VBScript file with a confirmation message
    echo Set objShell = CreateObject("WScript.Shell") > warning2.vbs
    echo answer = MsgBox("Do You Sure???",4+32,"app5439568905r8t698548690589865765875689 | ???") >> warning2.vbs
    echo WScript.Quit answer >> warning2.vbs

    rem Run the second VBScript file and capture the result
    start /wait wscript warning2.vbs
    set result2=%errorlevel%

    rem Check if the user clicked "Yes" on the second message box
    if %result2%==6 (
        echo Set objShell = CreateObject("WScript.Shell") > final_warning.vbs
        echo answer = MsgBox("Dont Copy!!! PLS!",4+48,"WARNING") >> final_warning.vbs
        echo WScript.Quit answer >> final_warning.vbs
        start /wait wscript final_warning.vbs
    ) else (
        echo Set objShell = CreateObject("WScript.Shell") > final_warning.vbs
        echo answer = MsgBox("Thank You!",0+64,"Thank You!!!") >> final_warning.vbs
        echo WScript.Quit answer >> final_warning.vbs
        start /wait wscript final_warning.vbs
    )
) else (
    rem Create a different VBScript file if the user clicked "No"
    echo Set objShell = CreateObject("WScript.Shell") > no_warning.vbs
    echo answer = MsgBox("YOU DID CLICK NO???",4+16,"WARNING") >> no_warning.vbs
    echo WScript.Quit answer >> no_warning.vbs
    start /wait wscript no_warning.vbs
)

pause
