# 取绝对路径
$path_abs = Split-Path -Parent $MyInvocation.MyCommand.Definition
# 记录路径
# $path_work = $PWD
# 整理路径
$path_abs = $path_abs -replace "\\", "/"
$path_abs = $path_abs -replace "C:", "c"
$path_abs = $path_abs -replace "D:", "d"
$path_abs = $path_abs -replace "E:", "e"
$path_abs = $path_abs -replace "F:", "f"
$path_abs = $path_abs -replace "G:", "g"
$path_abs = $path_abs -replace "H:", "h"
$path_abs = $path_abs -replace "I:", "i"
$path_abs = $path_abs -replace "J:", "j"
$path_abs = $path_abs -replace "K:", "k"
$path_abs = "/mnt/" + $path_abs

wsl "$path_abs/script_sh/clear_ad.sh"
