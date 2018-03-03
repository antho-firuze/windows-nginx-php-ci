@echo off
echo Stop nginx
echo .
echo .
echo .
taskkill /f /IM nginx.exe
taskkill /f /IM php-cgi.exe
cd /D %~dp0
set PHP_FCGI_CHILDREN=10
REM The maximum number of requests for each process handling, or set the Windows environment variable
set PHP_FCGI_MAX_REQUESTS=1000
start nginx
RunHiddenConsole.exe php\php-cgi.exe -q -c php -b 127.0.0.1:9000
ping 127.0.0.1 -n 1>NUL
echo Starting nginx
echo .
echo .
echo .
ping 127.0.0.1 >NUL
EXIT