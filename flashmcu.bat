@echo off

set target=STM32F103C8
set bin=F:\Main\RTOS\RT-Thread\F103-C8T6\Debug\rtthread.bin
set frequency=100000000

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

copy %bin% %~dp0bin\pyOCD\temp.bin

set now_path=%cd%

cd /D %~dp0bin\pyOCD

pyocd.exe flash --target="%target%" --erase=auto --frequency=%frequency% %~dp0bin\pyOCD\temp.bin
::pyocd.exe flash --target="STM32F103C8" --erase=auto --frequency=10000000 %bin%
del %~dp0bin\pyOCD\temp.bin
cd /D %now_path%
