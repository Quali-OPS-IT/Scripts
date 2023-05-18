@echo off
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

set len=12
set charpool=0123456789ABCDEF 
set len_charpool=16

for /L %%b IN (1, 1, %len%) do (
  
  set /A rnd_index=!RANDOM! * %len_charpool% / 32768
  
  for /F %%i in ('echo %%charpool:~!rnd_index!^,1%%') do set gen_str=!gen_str!%%i
)

wmic computersystem where caption='%computername%' rename DO_VM_%gen_str%

shutdown /r /t 0


