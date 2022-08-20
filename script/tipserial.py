'''
Author: Pomin
Date: 2022-02-10 14:51:05
Github: https://github.com/POMIN-163
LastEditTime: 2022-02-10 21:04:09
Description: 后台检测串口设备的插入
'''
import time
import os
import win32api
import win32event
import win32com.client
import serial.tools.list_ports
from win10toast import ToastNotifier

# 微软语音
spk = win32com.client.Dispatch("SAPI.SpVoice")
# win10 消息提醒 API
toaster = ToastNotifier()
port_list = list('')
port_list_last = list('')
list2arr = []
list2arr_last = []
ico_path = os.path.dirname(os.path.abspath(__file__)) + "\\tip.ico"
speak_en = False

'''
win10 消息提醒
'''
def my_tip(title_="提示", msg_=""):
    toaster.show_toast(
        title=title_, msg=msg_, icon_path=ico_path, duration=6, threaded=True
    )

'''
一个数字是否在指定数组中
'''
def is_in_arr(arr, num):
    try:
        arr.index(num)
    except:
        return False
    return True

'''
拷贝数组、列表
'''
def copy_arr(arr1, arr2):
    arr2.clear()
    for xx in arr1:
        arr2.append(xx)

'''
刷新数组
'''
def serial2arr():
    list2arr.clear()
    for i in range(0, len(port_list)):
        if port_list[i].name[:3] == 'COM':
            list2arr.append(int(port_list[i].name[3:]))
            # print(port_list[i])

'''
主函数
'''
if __name__ == '__main__':
    # 创建互斥锁避免多开
    mutex = win32event.CreateMutex(None, False, 'pomin serial toast tools')
    if win32api.GetLastError() > 0:
        toaster.show_toast("串口插入监测已在运行",
                           "小主，我已经在运行了，嗷~~~~",
                           icon_path=ico_path,
                           duration=5,
                           threaded=False
                           )
        exit(1)
    print('开始运行')
    my_tip("启动了，嗷~~~~", "串口插入监测开始运行")

    port_list = list(serial.tools.list_ports.comports())
    port_list_last = list(serial.tools.list_ports.comports())
    serial2arr()
    copy_arr(list2arr, list2arr_last)

    while True:
        time.sleep(0.5)
        copy_arr(list2arr, list2arr_last)
        copy_arr(port_list, port_list_last)
        port_list = list(serial.tools.list_ports.comports())
        if len(port_list) != 0:
            if len(port_list) != len(port_list_last):
                if len(port_list) > len(port_list_last):
                    print('串口设备插入')
                    serial2arr()
                    for x in list2arr:
                        if not is_in_arr(list2arr_last, x):
                            print("add: " + str(port_list[list2arr.index(x)]))
                            if speak_en:
                                spk.Speak(u"插入COM" + str(x))
                            my_tip("串口设备插入", str(port_list[list2arr.index(x)]))
                else:
                    print('串口设备拔出')
                    serial2arr()
                    for x in list2arr_last:
                        if not is_in_arr(list2arr, x):
                            print("remove: " + str(port_list_last[list2arr_last.index(x)]))
                            if speak_en:
                                spk.Speak(u"拔出COM" + str(x))
                            my_tip("串口设备拔出", str(port_list_last[list2arr_last.index(x)]))
