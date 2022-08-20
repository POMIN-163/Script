$mytemp=$env:path
$env:path=""
D:\Maker\Qt\6.1.2\mingw81_64\bin\windeployqt.exe $args[0]
#D:\Maker\Qt\5.14.2\mingw73_64\bin
#D:\Maker\Qt\5.14.2\mingw73_32\bin
$env:path=$mytemp
