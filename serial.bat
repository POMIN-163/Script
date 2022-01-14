@echo off

if "%1"=="." (
    echo 当前已连接的串口
    echo .........................................................
    python %~dp0script\search_serial.py
    echo .........................................................
    goto end
) else (
    if "%1"=="all" (
        echo 当前已连接的串口
        echo .........................................................
        python %~dp0script\search_serial.py
        echo .........................................................
        goto end
    ) else (
        echo 连接串口到 %1...
        python %~dp0script\connect_serial.py %*

        echo connecting...
    )
)

:end
