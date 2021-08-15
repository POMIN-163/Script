@echo off

echo %cd%
echo 一键创建VSCode的C语言编辑环境

echo .........................................................
set a=%cd%
if not exist .vscode md .vscode
xcopy /E /Y "%~dp0codenew\.vscode\" "%a%\.vscode\"
echo Copy config OK
copy "%~dp0codenew\Proj.code-workspace" "%a%\Proj.code-workspace"
echo Make project OKcopy
python "%~dp0script\codenewpy.py" "%a%" %1
echo Open project
explorer Proj.code-workspace
echo .........................................................
