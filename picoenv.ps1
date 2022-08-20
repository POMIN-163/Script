$env:path=$env:path+';D:\Maker\Console\arm-gcc\bin'
$env:PICO_TOOLCHAIN_PATH="D:\Maker\Console\arm-gcc"
$env:PICO_SDK_PATH="F:\MyEnv\pico_env\pico-sdk"

# vs shell
Import-Module "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\Tools\Microsoft.VisualStudio.DevShell.dll"
Enter-VsDevShell 7a21d8c5

clear

$help_info = ""
$help_info = $help_info + "`nPICO_SDK_PATH: $env:PICO_SDK_PATH"
$help_info = $help_info + "`nPICO_TOOLCHAIN_PATH: $env:PICO_TOOLCHAIN_PATH"

$help_info = $help_info + "`nproject new          : pico n / pico new [--gui]"
$help_info = $help_info + "`nproject make         : pico m / pico make"
$help_info = $help_info + "`nproject build        : pico b / pico build"
$help_info = $help_info + "`nproject help         : pico h / pico help"
$help_info = $help_info + "`nproject open(vscode) : pico o / pico open"

echo $help_info

function global:picobuild {
    nmake
}

function global:picomake  {
    param ( $argv )
    cmake -DCMAKE_BUILD_TYPE=Debug -G "NMake Makefiles" $argv
}

function global:piconew   {
    param ( $argv )
    python "$env:PICO_SDK_PATH/../pico-project-generator/pico_project.py" $argv
}

function global:picoopen  {
    code .
}

function global:picohelp  {
    echo $help_info
}

function global:pico      {
    param ( $f, $argv )
    if ( $f -eq "b" -or $f -eq "build" ) { picobuild $argv }
    elseif ( $f -eq "n" -or $f -eq "new"   ) { piconew   $argv }
    elseif ( $f -eq "m" -or $f -eq "make"  ) { picomake  $argv }
    elseif ( $f -eq "o" -or $f -eq "open"  ) { picoopen  $argv }
    elseif ( $f -eq "h" -or $f -eq "help"  ) { picohelp  $argv }
}

