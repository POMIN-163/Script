@echo off

echo 一键清除目录 keil 编译垃圾

if exist "%1" (
    echo 指定目录 %1
    :: %~d1
    :: cd %1
    cd /d %1
    del *.pomin /s
    del *.bak /s
    del *.ddk /s
    del *.edk /s
    del *.lst /s
    del *.lnp /s
    del *.mpf /s
    del *.mpj /s
    del *.obj /s
    del *.omf /s
    ::del *.opt /s  ::不允许删除JLINK的设置
    del *.plg /s
    del *.rpt /s
    del *.tmp /s
    del *.__i /s
    del *.crf /s
    del *.o /s
    del *.d /s
    del *.axf /s
    del *.tra /s
    del *.dep /s
    del JLinkLog.txt /s

    del *.iex /s
    del *.htm /s
    del *.sct /s
    del *.map /s
) else (
    echo 未找到目录
)


