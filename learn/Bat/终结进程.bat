@echo off&cd /d %~dp0&%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
taskkill /f /t /im qq.exe

::ANSI格式，否则目录可能无效