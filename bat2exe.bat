@echo off
echo 伪编译 bat 到 exe，eg：bat2exe [bat] [exe] [ico] [visible]
echo 编译%1%中....
set defaultIco=E:\Beauty\logo\logo.ico
If "%1"=="" (
    echo bat文件不存在
	goto end
) else (
    set bat=%1
)
If "%2"=="" (
    echo exe文件未指定
	goto end
) else (
    set exe=%2
)
If "%3"=="" (
    set ico=%defaultIco%
) else (
    set ico=%3
)
If "%4"=="" (
    %~dp0bin\BattoExe.exe /bat %bat% /exe %exe% /icon %ico% /invisible
    echo 编译 %bat% 到 %exe% 完毕 图标: %ico%
) else (
    If "%4"=="1" (
        %~dp0bin\BattoExe.exe /bat %bat% /exe %exe% /icon %ico% /visible
    ) else (
        %~dp0bin\BattoExe.exe /bat %bat% /exe %exe% /icon %ico% /invisible
    )
    echo 编译 %bat% 到 %exe% 完毕 图标: %ico%
)
:end

