/*
 * @Author: Pomin
 * @Date: 2021-08-20 16:18:50
 * @Github: https://github.com/POMIN-163
 * @LastEditTime: 2022-01-20 23:17:28
 * @Description: clone 剪切板的 git 仓库
 */
#include <stdio.h>
#include <string.h>
#include <windows.h>

void get_clipboard_txt(char* txt);
void set_clipboard_txt(void);

char git_cmd[500];
char temp[500];
int main(int argc, char const* argv[]) {
    get_clipboard_txt(git_cmd);
    sprintf(temp, "git clone --recursive %s", git_cmd);
    system((const char*) temp);
    return 0;
}

void get_clipboard_txt(char* txt) {
    HANDLE hClip;
    if (OpenClipboard(NULL))  // 打开剪贴板
    {
        if (IsClipboardFormatAvailable(CF_TEXT))  // 判断格式是否是我们所需要
        {
            // 读取数据
            hClip = GetClipboardData(CF_TEXT);
            strcpy(txt, (char*) GlobalLock(hClip));
            GlobalUnlock(hClip);
            CloseClipboard();
        }
    }
}
void set_clipboard_txt(void) {
    HANDLE hClip;
    char* pBuf;
    if (OpenClipboard(NULL))  //打开剪贴板
    {
        EmptyClipboard();                  // 清空剪贴板
        // 写入数据
        hClip = GlobalAlloc(GMEM_MOVEABLE, strlen(pBuf) + 1);
        pBuf = (char*) GlobalLock(hClip);
        GlobalUnlock(hClip);               // 解锁
        SetClipboardData(CF_TEXT, hClip);  // 设置格式

        // 关闭剪贴板
        CloseClipboard();
    }
}
