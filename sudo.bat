::ShellExecute 方法
::
::作用: 用于运行一个程序或脚本。
::
::语法
::      .ShellExecute "application", "parameters", "dir", "verb", window
::      .ShellExecute 'some program.exe', '"some parameters with spaces"', , "runas", 1
::
::关键字
::   application   要运行的程序或脚本名称
::   parameters    运行程序或脚本所需的参数
::   dir           工作路径，若未指定则使用当前路径
::   verb          要执行的动作 (值可以是 runas/open/edit/print)
::                   runas 动作通常用于提升权限
::   window        程序或脚本执行时的窗口样式 (normal=1, hide=0, 2=Min, 3=max, 4=restore, 5=current, 7=min/inactive, 10=default)
@echo off
set sudo_temp=%*
set sudo_file=%TEMP%\sudo.txt
:file

if exist %sudo_file% del /f /q %sudo_file%
if exist %sudo_file% set sudo_file=%TEMP%\sudo%random%.txt

mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %sudo_temp% > %sudo_file%","","runas",0)(window.close)

:: 输出文件
:wait
if not exist %sudo_file% (
	TIMEOUT /T 1 > nul
	goto wait
)
::延时等待
:: echo %sudo_file%
type %sudo_file%
