###
 # @Author: Pomin
 # @Date: 2021-10-19 16:20:56
 # @Github: https://github.com/POMIN-163
 # @LastEditTime: 2021-10-19 16:25:50
 # @Description:
###
# 文件夹
find . -name 'Project Logs for*' -type d -print -exec rm -rf {} \;
find . -name 'Project Outputs for*' -type d -print -exec rm -rf {} \;
find . -name 'History' -type d -print -exec rm -rf {} \;
find . -name 'SnapDocs' -type d -print -exec rm -rf {} \;
find . -name '__Previews' -type d -print -exec rm -rf {} \;
# 文件
find . -name '*.PrjPcbStructure' -print -exec rm -rf {} \;
find . -name '*.PrjPcbStructure' -print -exec rm -rf {} \;
find . -name '*.PrjPCBStructure' -print -exec rm -rf {} \;
find . -name '*.htm' -print -exec rm -rf {} \;
#find . -name '*.zip' -print -exec rm -rf {} \;
#find . -name '*.rar' -print -exec rm -rf {} \;


# find . -name '*PcbLib' -print -exec rm -rf {} \;
# find . -name '*SchLib' -print -exec rm -rf {} \;