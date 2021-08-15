import os
import sys

arg_num = len(sys.argv)

com = 'com1'        # com 口
baudrate = '115200' # 波特率
databits = '8' # 数据位
parity   = 'n' # 校验位
stopbits = '1' # 停止位
flowctrl = 'n' # 硬件控制流

if arg_num == 1:
    print(
        '.........................................................\n' +
        'NAME\n' +
        '    serial - makes SERIAL connection.\n' +
        'SYNOPSYS\n' +
        '    serial COM1 [ baudrate ] \n' +
        '    serial COM1 [ baudrate ][ databits ][ parity ][ stopbits ][ flowctrl ] \n' +
        'OPTIONS\n' +
        '    baudrate (default: 115200)\n' +
        '    databits (default: 8) 5,6,7,8\n' +
        '    parity (default: n) n:None, o:Odd, e:Even, m:Mark, s:Space\n' +
        '    stopbits (default: 1) 1,2\n' +
        '    flowctrl (default: n) n:None, h:RTS/CTS, x:XON/XOFF\n' +
        '.......................................................\n'
    )
elif arg_num == 2:
    com = sys.argv[1]
    cmd = 'plink.exe -serial ' + com + ' -sercfg ' + baudrate + ','+ databits + ',' + parity + ',' + stopbits + ',' + flowctrl
    cmd = 'echo ' + cmd + '> temp.bat && echo del %0 >> temp.bat'
    os.system(cmd)
elif arg_num == 3:
    com = sys.argv[1]
    baudrate = sys.argv[2]
    cmd = 'plink.exe -serial ' + com + ' -sercfg ' + baudrate + ','+ databits + ',' + parity + ',' + stopbits + ',' + flowctrl
    cmd = 'echo ' + cmd + '> temp.bat && echo del %0 >> temp.bat'
    os.system(cmd)
elif arg_num == 7:
    com = sys.argv[1]
    baudrate = sys.argv[2]
    databits = sys.argv[3]
    parity   = sys.argv[4]
    stopbits = sys.argv[5]
    flowctrl = sys.argv[6]
    cmd = 'plink.exe -serial ' + com + ' -sercfg ' + baudrate + ','+ databits + ',' + parity + ',' + stopbits + ',' + flowctrl
    cmd = 'echo ' + cmd + '> temp.bat && echo del %0 >> temp.bat'
    os.system(cmd)

