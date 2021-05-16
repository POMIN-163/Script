cd Objects
If exist ..\..\OBJ copy *.hex ..\..\OBJ
If exist ..\..\OBJ copy *.bin ..\..\OBJ
If exist ..\..\OBJ copy *.axf ..\..\OBJ

If exist ..\..\Out copy *.hex ..\..\Out
If exist ..\..\Out copy *.bin ..\..\Out
If exist ..\..\Out copy *.axf ..\..\Out

cd ..
cd Listings
If exist ..\..\OBJ copy *.map ..\..\OBJ
If exist ..\..\OBJ copy *.lst ..\..\OBJ

If exist ..\..\Out copy *.map ..\..\Out
If exist ..\..\Out copy *.lst ..\..\Out

exit
