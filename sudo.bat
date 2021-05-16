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
set sudo___temp=%1 %2 %3 %4 %5 %6 %7 %8 %9
set sudo___file=%TEMP%\sudo.txt
:file

if exist %sudo___file% del /f /q %sudo___file%
if exist %sudo___file% set sudo___file=%TEMP%\sudo%random%.txt

mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %sudo___temp% > %sudo___file%","","runas",0)(window.close)

:: 输出文件
:wait
if not exist %sudo___file% (
	TIMEOUT /T 1 > nul
	goto wait
)
::延时等待
:: echo %sudo___file%
type %sudo___file%
