::ShellExecute ����
::
::����: ��������һ�������ű���
::
::�﷨
::      .ShellExecute "application", "parameters", "dir", "verb", window
::      .ShellExecute 'some program.exe', '"some parameters with spaces"', , "runas", 1
::
::�ؼ���
::   application   Ҫ���еĳ����ű�����
::   parameters    ���г����ű�����Ĳ���
::   dir           ����·������δָ����ʹ�õ�ǰ·��
::   verb          Ҫִ�еĶ��� (ֵ������ runas/open/edit/print)
::                   runas ����ͨ����������Ȩ��
::   window        �����ű�ִ��ʱ�Ĵ�����ʽ (normal=1, hide=0, 2=Min, 3=max, 4=restore, 5=current, 7=min/inactive, 10=default)
@echo off
set sudo___temp=%1 %2 %3 %4 %5 %6 %7 %8 %9
set sudo___file=%TEMP%\sudo.txt
:file

if exist %sudo___file% del /f /q %sudo___file%
if exist %sudo___file% set sudo___file=%TEMP%\sudo%random%.txt

mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %sudo___temp% > %sudo___file%","","runas",0)(window.close)

:: ����ļ�
:wait
if not exist %sudo___file% (
	TIMEOUT /T 1 > nul
	goto wait
)
::��ʱ�ȴ�
:: echo %sudo___file%
type %sudo___file%
