/**
 * @file ascii.c
 * @author Pomin
 * @brief 列出 ascii 的一些常用字符
 * @date 2021-06-24
 *
 * @copyright Copyright (c) 2021
 *
**/
#include <stdio.h>
#include <windows.h>

int main(int argc,  char const *argv[]) {
    int i = (int)' '; // 从空格开始罗列
    printf("\nascii:");
    for (; i < 127; i++) {
        printf("%c", (char)i);
    }
    printf("\n\n");
    system("pause");
    return 0;
}
