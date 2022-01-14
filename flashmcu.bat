@echo off

set target=STM32F103C8
set bin=F:\Main\RTOS\RT-Thread\F103-C8T6\Debug\rtthread.bin
set frequency=10000000

if "%1"=="" (
    echo error type default: STM32F103C8
)  else (
    set target=%1
)
if "%2"=="" (
    echo error path default F:\Main\RTOS\RT-Thread\F103-C8T6\Debug\rtthread.bin
) else (
    set bin=%2
)
rem echo set wshell=createobject("wscript.shell") > %temp%\dap.vbs
rem echo wscript.sleep 600 >> %temp%\dap.vbs
rem echo wshell.sendkeys "{UP}" >> %temp%\dap.vbs
rem echo wscript.sleep 600 >> %temp%\dap.vbs
rem echo wshell.sendkeys "{UP}" >> %temp%\dap.vbs
rem echo wscript.sleep 600 >> %temp%\dap.vbs
rem echo wshell.sendkeys "{UP}" >> %temp%\dap.vbs
rem echo wscript.sleep 600 >> %temp%\dap.vbs
rem echo wshell.sendkeys "{ENTER}" >> %temp%\dap.vbs
rem set a=%temp%\dap.vbs
rem explorer %a%

set now_path=%~dp0
cd %~dp0bin\pyOCD
pyocd.exe flash --target="%target%" --erase=auto --frequency=%frequency% %bin%
::pyocd.exe flash --target="STM32F103C8" --erase=auto --frequency=10000000 %bin%
cd now_path
