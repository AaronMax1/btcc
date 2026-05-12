@echo off
cd /d "%~dp0"
ccminer.exe -a sha256d -o http://127.0.0.1:28476 -O user:pass --coinbase-addr=CQAircEejHZYzjRCt4kvEeBqkYXSVKQPjm --no-getwork --no-longpoll --segwit
pause
