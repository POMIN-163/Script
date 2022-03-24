/*
 * @Author: Pomin
 * @Date: 2022-02-14 14:42:58
 * @Github: https://github.com/POMIN-163
 * @LastEditTime: 2022-02-14 20:43:00
 * @Description: 正则表达式匹配、转换任意进制
 */
#include <iostream>
#include <regex>

using namespace std;

typedef enum check_type {
    check_none = 0,
    check_bin,
    check_oct,
    check_dec,
    check_hex,
} check_type;

#define is_bin(in) regex_match(in, regex("^-?0[bB][01]+$"))
#define is_oct(in) regex_match(in, regex("^-?0[^bBxX][0-7]+$"))
#define is_hex(in) regex_match(in, regex("^-?0[xX][0-9A-Fa-f]+$"))

#define do_bin(in) { in = regex_replace(in, regex("^-?0[bB]"), ""); cout << "二进制"   << endl; return check_bin;}
#define do_oct(in) { in = regex_replace(in, regex("^-?0"    ), ""); cout << "八进制"   << endl; return check_oct;}
#define do_hex(in) { in = regex_replace(in, regex("^-?0[xX]"), ""); cout << "十六进制" << endl; return check_hex;}

/**
 * @brief 正则表达式匹配进制
 *
 * @return check_type
**/
check_type check_str_type(string& in) {
    check_type result = check_none;
    in = regex_replace(in, regex("^-"), "");
    /* 匹配 */
    cout << "判断 " << in << " 为 ";
    if (is_hex(in)) {
        do_hex(in);
    } else if (is_bin(in)) {
        do_bin(in);
    } else if (is_oct(in)) {
        do_oct(in);
    } else {
        // cout << "没有前缀..... 再次判断.....判断为 ";
        if (regex_match(in, regex("^-?[0-9]+$"))) {
            cout << "十进制" << endl;
            result = check_dec;
        } else if (regex_match(in, regex("^-?[01]+$"))) {
            cout << "二进制" << endl;
            result = check_bin;
        } else if (regex_match(in, regex("^-?[a-fA-F0-9]+$"))) {
            cout << "十六进制" << endl;
            result = check_hex;
        } else {
            cout << "未知进制" << endl;
            exit(1);
        }
    }
    return result;
}
/**
 * @brief 二进制转十进制
 *
 * @param in
 * @return uint64_t
**/
uint64_t bin2dec(string in) {
    char bit[64];
    uint64_t result = 0;
    strcpy(bit, in.c_str());
    for (size_t i = 0; i < strlen(bit); i++) {
        result <<= 1;
        result |= (bit[i] == '1');
    }
    return result;
}
/**
 * @brief 十进制转二进制
 *
 * @param in
 * @return string
**/
string dec2bin(uint64_t in) {
    int i;
    char bit[64];
    string out = string("");
    for (i = 0; in > 0; in /= 2) bit[i++] = in % 2;
    for (i--; i > -1; i--) {
        out += (i % 4) ? (bit[i] ? "1" : "0") : (bit[i] ? "1 " : "0 ");
    }
    return out;
}
/**
 * @brief 十进制转常见进制
 *
 * @param in
**/
void dec2all(uint64_t in) {
    char buf[100];
    sprintf(buf, "%llx", in);
    cout << "HEX:  " << buf << endl;
    cout << "DEC:  " << in << endl;
    sprintf(buf, "%llo", in);
    cout << "OCT:  " << buf << endl;
    cout << "BIN:  " << dec2bin(in) << endl;
}

int main(int argc, char const* argv[]) {
    string in = "";
    uint64_t dec;
    /* 红色输出 */
    cout << "\033[31;40;25m";
    if (argc == 1) {
        cout << "输入参数!!!!" << endl;
        return 1;
    } else {
        in = string(argv[1]);
        switch (check_str_type(in)) {
        case check_bin:
            dec = bin2dec(in);

            break;
        case check_oct:
            sscanf(in.c_str(), "%llo", &dec);

            break;
        case check_dec:
            sscanf(in.c_str(), "%lld", &dec);

            break;
        case check_hex:
            sscanf(in.c_str(), "%llx", &dec);

            break;
        default:
            break;
        }
        dec2all(dec);
    }
    cout << "\033[0m";
    return 0;
}

