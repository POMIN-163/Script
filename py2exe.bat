@echo off
echo 伪编译 py 到 exe，eg：py2exe [py] [exe] [ico] [visible]
echo 编译%1%中....
set defaultIco=E:\Beauty\logo\logo.ico
If "%1"=="" (
    echo py文件不存在
    goto end
) else (
    set py=%1
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
    If exist "%3" (
        set ico=%3
    ) else (
        set ico=%defaultIco%
    )
)
If "%4"=="" (
    pyinstaller -F -w -i %ico% %py%
    copy %~dp1dist\%~n1.exe %exe%
    rd /s /q %~dp1build
    rd /s /q %~dp1dist
    rd /s /q %~dp1__pycache__
    del %~dpn1.spec
    ::pyinstaller -D -w -i %ico% %py%
    echo 编译 %py% 到 %exe% 完毕 图标: %ico%
) else (
    If "%4"=="1" (
        pyinstaller -F -i %ico% %py%
        copy %~dp1dist\%~n1.exe %exe%
        rd /s /q %~dp1build
        rd /s /q %~dp1dist
        rd /s /q %~dp1__pycache__
        del %~dpn1.spec
    ) else (
        pyinstaller -F -w -i %ico% %py%
        copy %~dp1dist\%~n1.exe %exe%
        rd /s /q %~dp1build
        rd /s /q %~dp1dist
        rd /s /q %~dp1__pycache__
        del %~dpn1.spec
    )
    echo 编译 %py% 到 %exe% 完毕 图标: %ico%
)
:end
