@ECHO OFF&PUSHD %~DP0 &TITLE ���а幤��

mode con cols=36 lines=20

color 0

cls

:menu

echo.

echo ���а�

echo ==============================

echo.

echo ����1������

echo ==============================

echo.

echo.

set /p user_input=���������֣�

echo.

if %user_input% equ 1 echo ��� 

type D:\My\POMIN\����.txt | clip

goto menu