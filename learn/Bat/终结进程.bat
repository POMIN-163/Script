@echo off&cd /d %~dp0&%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
taskkill /f /t /im qq.exe

::ANSI��ʽ������Ŀ¼������Ч