@echo off
set a=%TEMP%
echo Dim sapi > %a%\speak.vbs
echo msg="%1" >> %a%\speak.vbs
echo Set sapi=CreateObject("sapi.spvoice") >> %a%\speak.vbs
echo sapi.Speak msg >> %a%\speak.vbs
explorer %a%\speak.vbs