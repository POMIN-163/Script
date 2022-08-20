if ($args -eq "") {
    echo "no args !!!!"
}else{
    cmd /c "TASKKILL /IM $args 1>nul"
}
