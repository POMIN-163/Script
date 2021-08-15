@echo off
echo 编译%1%中....
set defaultIco=E:\Beauty\logo\logo.ico
If "%1"=="" (
    echo vbs文件不存在
    goto end
) else (
    set vbs=%cd%\%1
)
If "%2"=="" (
    echo exe文件未指定
    goto end
) else (
    set exe=%cd%\%2
)
If "%3"=="" (
    set ico=%defaultIco%
) else (
    set ico=%~dp0%3
)
If "%4"=="" (
    %~dp0bin\VbstoExe.exe /vbs %vbs% /exe %exe% /icon %ico% /invisible
) else (
    %~dp0bin\VbstoExe.exe /vbs %vbs% /exe %exe% /icon %ico% /visible
)
:end