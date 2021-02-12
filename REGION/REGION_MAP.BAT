@echo off
setlocal EnableDelayedExpansion

mkdir selection

set /A number_y = 00

:X_IS_0

set /A number_x = 00

:NEXT_X

set filename=r.!number_x!.!number_y!.mca

if exist !filename! (
	echo|set /p="1"
rem	echo filename
) else (
	echo|set /p="0"
)

rem copy !filename! selection

set /a number_x = !number_x! + 1

if !number_x! equ 23 (
	set /a number_y = !number_y! + 1
	if !number_y! equ 23 goto END
	echo .
	goto X_IS_0
)

goto NEXT_X
:END

pause