@echo off
echo %cd% 
echo һ������VSCode��C���Ա༭����
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
