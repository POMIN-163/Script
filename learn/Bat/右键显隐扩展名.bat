@echo off&cd /d %~dp0&%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit


title �Ҽ������ʾ/���� ϵͳ�ļ�+��չ��   
echo                                          ************************************
echo                                             a.��ʾ/���� ϵͳ�ļ�+��չ��
echo                                             b.��ʾ/���� �ļ���չ��
echo                                             c.��ʾ/���� ϵͳ�ļ�
echo                                             d.ж������
echo                                          ************************************
echo                                                            
set /p Z=�����Ӧ�ַ��س�:
if "%Z%"=="" (echo �����ַ� & goto Cho)
echo %Z%|findstr /i "^[a-d]$">nul&& (goto %Z%)||echo �����������������!&ping 0 -n "2">nul& goto Cho
:a
::��ȡϵͳ�汾���ܶ�Ӧ
ver | find /i "5.1."  > NUL
if %errorlevel% == 0 (goto Win7)
ver | find /i "6.1." > NUL
if %errorlevel% == 0 (goto Win7)
ver | find /i "10.0"  > NUL
if %errorlevel% == 0 (goto Win10)
:Win10
echo ���ڰ�װִ�нű�����
set filename=%systemRoot%\1.vbs
>%filename% echo Dim WSHShell
>>%filename% echo Set WSHShell = WScript.CreateObject("WScript.Shell")
>>%filename% echo sTitle1 = "SSH=0"
>>%filename% echo sTitle2 = "SSH=1"
>>%filename% echo if WSHShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden") = 1 then
>>%filename% echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "0", "REG_DWORD"
>>%filename% echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "2", "REG_DWORD"
>>%filename% echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "1", "REG_DWORD"
>>%filename% echo WSHShell.run "C:\Windows\1.bat",0
>>%filename% echo WSHShell.SendKeys "{F5}"
>>%filename% echo 'WSHShell.Popup "Poof, they're gone!", 1, sTitle1, vbInformation
>>%filename% echo else
>>%filename% echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "1", "REG_DWORD"
>>%filename% echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "1", "REG_DWORD"
>>%filename% echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "0", "REG_DWORD"
>>%filename% echo WSHShell.run "C:\Windows\1.bat",0
>>%filename% echo WSHShell.SendKeys "{F5}"
>>%filename% echo 'WSHShell.Popup "Here they are!", 1, sTitle2, vbInformation
>>%filename% echo end if
>>%filename% echo Set WSHShell = Nothing
>>%filename% echo WScript.Quit(0)
echo ���ڴ����Ҽ��˵�����
set filename=%systemRoot%\1.bat
>>%filename% echo=reg query HKEY_CLASSES_ROOT\Directory\Background\shell\show1 ^| find "��ʾ" ^>nul^&^&reg add HKEY_CLASSES_ROOT\Directory\Background\shell\show1 /d "��ʾ/���� ϵͳ�ļ�+��չ��" /f ^|^| reg add HKEY_CLASSES_ROOT\Directory\Background\shell\show1 /d "��ʾ/���� ϵͳ�ļ�+��չ��" /f
reg add HKEY_CLAssEs_RooT\Directory\Background\shell\show1 /d "��ʾ/���� ϵͳ�ļ�+��չ��" /f
echo ���ڹ����Ҽ��˵�����
reg add HKEY_CLAssEs_RooT\Directory\Background\shell\show1\command /d "wscript C:\\windows\\1.vbs" /f
if exist %filename% echo ��װ�ɹ���
ping 0 -n "2">nul
goto Cho
:b
echo ���ڰ�װִ�нű�����
set filename=%systemRoot%\2.vbs
>%filename% echo Dim WSHShell
>>%filename% echo Set WSHShell = WScript.CreateObject("WScript.Shell")
>>%filename% echo sTitle1 = "SSH=0"
>>%filename% echo sTitle2 = "SSH=1"
>>%filename% echo if WshSHell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt") = 0 then
>>%filename% echo WshSHell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "1", "REG_DWORD"
>>%filename% echo WSHShell.run "C:\Windows\2.bat",0
>>%filename% echo WshSHell.SendKeys "{F5}"
>>%filename% echo else
>>%filename% echo WshSHell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "0", "REG_DWORD"
>>%filename% echo WSHShell.run "C:\Windows\2.bat",0
>>%filename% echo WshSHell.SendKeys "{F5}"
>>%filename% echo end if
>>%filename% echo Set WSHShell = Nothing
>>%filename% echo WScript.Quit(0)
echo ���ڴ����Ҽ��˵�����
set filename=%systemRoot%\2.bat
>>%filename% echo=reg query HKEY_CLASSES_ROOT\Directory\Background\shell\show2 ^| find "��ʾ" ^>nul^&^&reg add HKEY_CLASSES_ROOT\Directory\Background\shell\show2 /d "��ʾ/���� �ļ���չ��" /f ^|^| reg add HKEY_CLASSES_ROOT\Directory\Background\shell\show2 /d "��ʾ/���� �ļ���չ��" /f
reg add HKEY_CLAssEs_RooT\Directory\Background\shell\show2 /d "��ʾ/���� �ļ���չ��" /f
echo ���ڹ����Ҽ��˵�����
reg add HKEY_CLAssEs_RooT\Directory\Background\shell\show2\command /d "wscript C:\\windows\\2.vbs" /f
if exist %filename% echo ��װ�ɹ���
ping 0 -n "2">nul
goto Cho
:c
echo ���ڰ�װִ�нű�����
set filename=%systemRoot%\3.vbs
>%filename% echo Dim WSHShell
>>%filename% echo Set WSHShell = WScript.CreateObject("WScript.Shell")
>>%filename% echo sTitle1 = "SSH=0"
>>%filename% echo sTitle2 = "SSH=1"
>>%filename% echo if WshSHell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden") = 2 then
>>%filename% echo WshSHell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "1", "REG_DWORD"
>>%filename% echo WSHShell.run "C:\Windows\3.bat",0
>>%filename% echo WshSHell.SendKeys "{F5}"
>>%filename% echo else
>>%filename% echo WshSHell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "2", "REG_DWORD"
>>%filename% echo WSHShell.run "C:\Windows\3.bat",0
>>%filename% echo WshSHell.SendKeys "{F5}"
>>%filename% echo end if
>>%filename% echo Set WSHShell = Nothing
>>%filename% echo WScript.Quit(0)
echo ���ڴ����Ҽ��˵�����
set filename=%systemRoot%\3.bat
>>%filename% echo=reg query HKEY_CLASSES_ROOT\Directory\Background\shell\show3 ^| find "��ʾ" ^>nul^&^&reg add HKEY_CLASSES_ROOT\Directory\Background\shell\show3 /d "��ʾ/���� ϵͳ�ļ�" /f ^|^| reg add HKEY_CLASSES_ROOT\Directory\Background\shell\show3 /d "��ʾ/���� ϵͳ�ļ�" /f
reg add HKEY_CLAssEs_RooT\Directory\Background\shell\show3 /d "��ʾ�����ļ�" /f
echo ���ڹ����Ҽ��˵�����
reg add HKEY_CLAssEs_RooT\Directory\Background\shell\show3\command /d "wscript C:\\windows\\3.vbs" /f
if exist %filename% echo ��װ�ɹ���
ping 0 -n "2">nul
goto Cho
:Win7
echo ���ڰ�װִ�нű�����
>"%windir%\SuperHidden.vbs" echo Dim WSHShell
>>"%windir%\SuperHidden.vbs" echo Set WSHShell = WScript.CreateObject("WScript.Shell")
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\CLSID", "{13709620-C279-11CE-A49E-444553540000}", "REG_SZ"
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\method", "ShellExecute", "REG_SZ"
>>"%windir%\SuperHidden.vbs" echo if WSHShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden") = 1 then
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "0", "REG_DWORD"
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "2", "REG_DWORD"
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "1", "REG_DWORD"
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\command", "��ʾ/���� ϵͳ�ļ�+��չ��", "REG_SZ"
>>"%windir%\SuperHidden.vbs" echo WSHShell.SendKeys "{F5}+{F10}e" 
>>"%windir%\SuperHidden.vbs" echo else
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "1", "REG_DWORD"
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "1", "REG_DWORD"
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "0", "REG_DWORD"
>>"%windir%\SuperHidden.vbs" echo WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\command", "��ʾ/���� ϵͳ�ļ�+��չ��", "REG_SZ"
>>"%windir%\SuperHidden.vbs" echo WSHShell.SendKeys "{F5}+{F10}e" 
>>"%windir%\SuperHidden.vbs" echo end if
>>"%windir%\SuperHidden.vbs" echo Set WSHShell = Nothing
>>"%windir%\SuperHidden.vbs" echo WScript.Quit(0)
reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "%temp%\__.reg" >nul
for /f "tokens=2 delims==" %%. in ('find/i "HideFileExt" "%temp%\__.reg"') do set v=%%~.
del "%temp%\__.reg"
set v=%v:~-1%
if %v% equ 0 set vv=��ʾ/���� ϵͳ�ļ�+��չ��
if %v% equ 1 set vv=��ʾ/���� ϵͳ�ļ�+��չ��
>"%temp%\_.reg" echo REGEDIT4
>>"%temp%\_.reg" echo [HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\SuperHidden]
>>"%temp%\_.reg" echo @="{00000000-0000-0000-0000-000000000012}"
>>"%temp%\_.reg" echo [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\InProcServer32]
>>"%temp%\_.reg" echo @=hex(2):25,53,79,73,74,65,6d,52,6f,6f,74,25,5c,73,79,73,74,65,6d,33,32,5c,73,\
>>"%temp%\_.reg" echo   68,64,6f,63,76,77,2e,64,6c,6c,00
>>"%temp%\_.reg" echo "ThreadingModel"="Apartment"
>>"%temp%\_.reg" echo [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\Instance]
>>"%temp%\_.reg" echo "CLSID"="{3f454f0e-42ae-4d7c-8ea3-328250d6e272}"
>>"%temp%\_.reg" echo [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag]
>>"%temp%\_.reg" echo "method"="ShellExecute"
>>"%temp%\_.reg" echo "Param1"="SuperHidden.vbs"
>>"%temp%\_.reg" echo "CLSID"="{13709620-C279-11CE-A49E-444553540000}"
>>"%temp%\_.reg" echo "command"="%vv%"
regedit /s "%temp%\_.reg"
del /f /q "%temp%\_.reg"&echo ��װ��ϣ�&ping 0 -n "2">nul&goto Cho
:d
echo ����ɾ��ִ�нű�����
del %systemRoot%\1.vbs %systemRoot%\2.vbs %systemRoot%\3.vbs %windir%\SuperHidden.vbs %systemRoot%\SuperHidden.vbs %systemRoot%\1.bat %systemRoot%\2.bat %systemRoot%\3.bat>nul
echo ����ɾ��ע�����������
reg delete HKEY_CLAssEs_RooT\Directory\Background\shell\show1 /f
reg delete HKEY_CLAssEs_RooT\Directory\Background\shell\show2 /f
reg delete HKEY_CLAssEs_RooT\Directory\Background\shell\show3 /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}" /f >nul
reg delete "HKLM\SOFTWARE\Classes\*\shell\DisplayFileExt" /f >nul >nul
reg delete "HKLM\SOFTWARE\Classes\Folder\shell\DisplayFileExt" /f >nul 
echo ж�سɹ���&ping 0 -n "2">nul&goto Cho