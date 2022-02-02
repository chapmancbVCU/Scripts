ECHO OFF

REM ***************************************************************************
REM Author: Chad Chapman
REM Date: 20141026
REM Version: 1.0
REM Created this script in response to layout issues specific to Windows 8.
REM Shortcuts were made on the desktop that provides this script with arguments
REM such as "s" for shutdown and "r" for restart.
REM ***************************************************************************
IF /I "%1"=="/s" (
	ECHO Windows is about to shutdown.  Press CNTRL+C to abort.
	PAUSE
	GOTO SHUTDOWN
) ELSE IF /I "%1"=="/r" (
	ECHO Windows is about to restart.  Press CNTRL+C to abort.
	PAUSE
) ELSE (
	ECHO Invalid argument.  Exiting.
	PAUSE
	GOTO DONE
)

REM ***************************************************************************
REM Subroutine for shutting down and restarting the computer.
REM ***************************************************************************
:SHUTDOWN
shutdown.exe %1 /t 00

REM ***************************************************************************
REM Subroutine for processing invalid input.
REM ***************************************************************************
:DONE
