cd D:\blog\hugo\sre
@echo off
@set "nowtime=%DATE:~2,2%%DATE:~5,2%%DATE:~8,2%%TIME:~1,1%%TIME:~3,2%%TIME:~6,2%%time:~9,1%"
E:\Software\Hugo\bin\hugo.exe  new posts\%nowtime%.md
::E:\Software\Hugo\bin\hugo.exe version  new posts\%nowtime%.md
echo "-------文件已经创建-------"
echo "%nowtime%.md"
echo "--------End!--------"
