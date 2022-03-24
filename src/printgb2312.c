/*
 * @Author: Pomin
 * @Date: 2022-02-23 22:36:44
 * @Github: https://github.com/POMIN-163
 * @LastEditTime: 2022-02-24 12:10:19
 * @Description: תgb2312
 */
#include <stdio.h>

void printgb(unsigned char* s) {
    unsigned char* p = s;
    while (*p) {
        if (*p >= 0x7f) {
            printf("0x%02x 0x%02x ", *p, *(p+1));
            p += 2;
        }
        else {
            printf("0x%02x ", *(p++));
        }
    }
    p = s;
    printf("\n");
    while (*p) {
        if (*p >= 0x7f) {
            printf("%02x %02x ", *p, *(p+1));
            p += 2;
        }
        else {
            printf("%02x ", *(p++));
        }
    }
}
int main(int argc, char* argv[]) {
    printf("\033[31;40;25m");
    if (argc > 1) {
        char* txt_src = argv[1];
        printgb(txt_src);
        return 0;
    } else {
        printf("no arg");
        return 1;
    }
    printf("\033[0m");
}
