@echo off
echo ����%1%��....
set defaultIco=E:\Beauty\logo\logo.ico
If "%1"=="" (
    echo vbs�ļ�������
    goto end
) else (
    set vbs=%cd%\%1
)
If "%2"=="" (
    echo exe�ļ�δָ��
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