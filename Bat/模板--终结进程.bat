@echo off&cd /d %~dp0&%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
taskkill /f /t /im MemReduct.exe
taskkill /f /t /im qq.exe
taskkill /f /t /im KuGou.exe
taskkill /f /t /im memreduct.exe
taskkill /f /t /im 热键1.1.0.exe
taskkill /f /t /im 天若OCR文字识别.exe
taskkill /f /t /im Snipaste.exe
taskkill /f /t /im IDMan.exe
taskkill /f /t /im IEMonitor.exe
taskkill /f /t /im wallpaper32.exe
::ANSI格式，否则目录可能无效