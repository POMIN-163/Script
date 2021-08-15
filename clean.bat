@echo off

if "%1"=="icon" (
	goto icon
)
if "%1"=="temp" (
	goto temp
)
if "%1"=="comx" (
	goto comx
)
echo .........................................................
echo Please set arg: icon: 图标缓存  temp: 系统缓存  comx: 端口号
goto end
:icon
	echo 删图标缓存及任务栏无效图标
	echo .........................................................
	taskkill /f /im explorer.exe
	:: 清理系统图标缓存数据库
	attrib -h -s -r "%userprofile%\AppData\Local\IconCache.db"
	del /f "%userprofile%\AppData\Local\IconCache.db"
	start explorer
	reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams /f
	reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream /f
	goto end
:temp
	echo 清理系统缓存
	echo .........................................................
	del /f /s /q %systemdrive%\*.tmp
	del /f /s /q %systemdrive%\*._mp
	del /f /s /q %systemdrive%\*.log
	del /f /s /q %systemdrive%\*.gid
	del /f /s /q %systemdrive%\*.chk
	del /f /s /q %systemdrive%\*.old
	del /f /s /q %systemdrive%\recycled\*.*
	del /f /s /q %windir%\*.bak
	del /f /s /q %windir%\prefetch\*.*
	rd /s /q %windir%\temp & md %windir%\temp
	del /f /q %userprofile%\cookies\*.*
	del /f /q %userprofile%\recent\*.*
	del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
	del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
	del /f /s /q "%userprofile%\recent\*.*"
	echo 清理系统缓存完毕
	goto end
:comx
	echo 清理所有串行端口 (清理完毕后需要重启)
	reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\COM Name Arbiter" /v ComDB /f
	reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\COM Name Arbiter\Devices" /va /f
	goto end
:end
echo .........................................................
