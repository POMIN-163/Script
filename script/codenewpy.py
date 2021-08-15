import os
import sys

sondir = ''
arg_num = len(sys.argv)

def print_files(path):
    global sondir
    lsdir = os.listdir(path)
    dirs = [i for i in lsdir if os.path.isdir(os.path.join(path, i))]
    if dirs:
        for i in dirs:
            print_files(os.path.join(path, i))
    files = [i for i in lsdir if os.path.isfile(os.path.join(path, i))]
    for f in dirs:
        sondir += ('\n                \"' + os.path.join(path, f) + '\",')


current = sys.argv[1]
print_files(current)
sondir = sondir.replace(current, '.').replace('\\', '\\\\')
sondir += '\n                \"\"\n'
# sondir += '\n                \"made by pomin\"\n'
# print(sondir)
cpp = open(current + '\\.vscode' + '\\c_cpp_properties.json', 'r', encoding='UTF-8')
cppstr = cpp.read().replace('codenewpy--inc', sondir)

if arg_num > 2:
    cppstr = cppstr.replace('codenewpy--def', '\"' + sys.argv[2] + '\"')
else :
    cppstr = cppstr.replace('codenewpy--def', '\"\"')

cpp = open(current + '\\.vscode' + '\\c_cpp_properties.json', 'w', encoding='UTF-8')
cpp.write(cppstr)

print('made by pomin')