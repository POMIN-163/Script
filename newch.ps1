chcp 65001
$path_abs = Split-Path -Parent $MyInvocation.MyCommand.Definition
$c_ = "pn_"+$args[0]+".c"
$h_ = "pn_"+$args[0]+".h"

cp $path_abs/src/pn_template.c $c_
cp $path_abs/src/pn_template.h $h_

$INC = $args[0]
$DEF = $args[0]
$DEF = $DEF -replace "a" , "A"
$DEF = $DEF -replace "b" , "B"
$DEF = $DEF -replace "c" , "C"
$DEF = $DEF -replace "d" , "D"
$DEF = $DEF -replace "e" , "E"
$DEF = $DEF -replace "f" , "F"
$DEF = $DEF -replace "g" , "G"
$DEF = $DEF -replace "h" , "H"
$DEF = $DEF -replace "i" , "I"
$DEF = $DEF -replace "j" , "J"
$DEF = $DEF -replace "k" , "K"
$DEF = $DEF -replace "l" , "L"
$DEF = $DEF -replace "m" , "M"
$DEF = $DEF -replace "n" , "N"
$DEF = $DEF -replace "o" , "O"
$DEF = $DEF -replace "p" , "P"
$DEF = $DEF -replace "q" , "Q"
$DEF = $DEF -replace "r" , "R"
$DEF = $DEF -replace "s" , "S"
$DEF = $DEF -replace "t" , "T"
$DEF = $DEF -replace "u" , "U"
$DEF = $DEF -replace "v" , "V"
$DEF = $DEF -replace "w" , "W"
$DEF = $DEF -replace "x" , "X"
$DEF = $DEF -replace "y" , "Y"
$DEF = $DEF -replace "z" , "Z"
$DEF = "PN_" + $DEF

(Get-Content $c_) |
Foreach-Object {$_ -replace 'template', $INC} |
Out-File -Encoding utf8 $c_

(Get-Content $h_) |
Foreach-Object {$_ -replace 'PN_DEF', $DEF} |
Out-File -Encoding utf8 $h_

(Get-Content $h_) |
Foreach-Object {$_ -replace 'template', $INC} |
Out-File -Encoding utf8 $h_

