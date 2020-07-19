@echo off

setlocal
:PROMPT
SET /P PROMPT=Do you want to run the example script (y/n)? 
IF /I "%PROMPT%" NEQ "y" GOTO END

echo Running package cleanup...
cmd /k "cd /d venv\Scripts & activate & cd /d ..\..\ & python example.py & exit"
echo.

:END
endlocal

echo.
echo Virtual environment activated.
cmd /k venv\Scripts\activate