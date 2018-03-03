@ECHO off
cd /D %~dp0
ECHO Rotate nginx
ECHO .
ECHO .
ECHO .
For /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%%ldt:~4,2%%ldt:~6,2%_%ldt:~8,2%%ldt:~10,2%
move logs\access.log logs\access_%ldt%.log
move logs\error.log logs\error_%ldt%.log
nginx -s reopen
REM PAUSE
EXIT