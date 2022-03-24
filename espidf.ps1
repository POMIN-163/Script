# 选择 idf 版本

switch -regex ($args[0])
{
    "[(esp)]?8266$"   { echo "8266" ; F:\MyEnv\esp_env\esp8266_env.bat }
    "[(esp)]?32$"     { echo "32"   ; F:\MyEnv\esp_env\esp32_env.bat   }
    "[(esp)]?32s\d?$" { echo "32S"  ; F:\MyEnv\esp_env\esp32s_env.ps1  }
    "[(esp)]?32c\d?$" { echo "32C"  ; F:\MyEnv\esp_env\esp32s_env.ps1  }
    "^$" { F:\MyEnv\esp_env\esp32s_env.ps1  }
}
