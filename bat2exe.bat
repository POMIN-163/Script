@echo off
echo ����%1%��....
set defaultIco=E:\Beauty\logo\logo.ico
If "%1"=="" (
    echo bat�ļ�������
	goto end
) else (
    set bat=%cd%\%1
)
If "%2"=="" (
    echo exe�ļ�δָ��
	goto end
) else (
    set exe=%cd%\%2
)
If "%4"=="" (
    set ico=%defaultIco%
) else (
    set ico=%~dp0%3
)
If "%3"=="" (
    %~dp0bin\BattoExe.exe /bat %bat% /exe %exe% /icon %ico% /invisible
) else (
    %~dp0bin\BattoExe.exe /bat %bat% /exe %exe% /icon %ico% /visible
)
:end