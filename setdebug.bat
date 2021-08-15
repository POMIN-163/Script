@echo off

echo 设置本目录下所有 Keil 工程为某个下载器

echo .........................................................
set script=%~dp0script\setdebug.py
:: echo %script%
set folder="%cd%"
:: echo %folder%

if "%1"=="j" (
	python %script%"" %folder% JLink"
) else if "%1"=="st" (
	python %script%"" %folder% STLink"
) else If "%1"=="dap" (
	python %script% %folder% DAPLink
) else echo Please set arg: j: JLink   st: ST-Link   dap: DAP-Link

echo .........................................................
