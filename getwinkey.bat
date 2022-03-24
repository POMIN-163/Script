:: 获取本机 Windows 激活密钥
@echo off

echo 获取本机 Windows 激活密钥

echo .........................................................
explorer %~dp0script\getwinkey.vbs
TIMEOUT /T 3 /NOBREAK
type %TEMP%\WindowsKey.txt
echo .........................................................