@echo off
echo %cd% 
echo 一键创建VSCode的C语言编辑环境
echo .........................................................
set a=%cd%
if not exist .vscode md .vscode
copy "%~dp0codenew\.vscode\*" "%a%\.vscode\*"
echo Copy config OK
copy "%~dp0codenew\Proj.code-workspace" "%a%\Proj.code-workspace"
echo Make project OKcopy
python "%~dp0codenew\codenewpy.py" "%a%"
echo Open project
explorer Proj.code-workspace
echo .........................................................
