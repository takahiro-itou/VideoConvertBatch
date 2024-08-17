
@ECHO OFF
setlocal

@REM  CD /D %~dp0

:loop

IF "%~1" == ""  GOTO finish

source=%~1
output=%~n1.wmv

ECHO  Source : %source%
ECHO  Output : %target%

command_line=ffmpeg  -i %1 -c:v wmv2 -ac 2 -s 480x270 -b:a 320k -q:v 2 "%output%"
ECHO  RunCmd: %command_line%

SHIFT
GOTO  loop

:finish