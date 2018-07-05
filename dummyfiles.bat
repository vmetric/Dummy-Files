REM Created by Matthew Putnam.

REM ---- TODO ----
REM Make it more... user-friendly?
REM Add progress indicator
REM Confirm information before execution



REM Prompt for number of files to create.
set /p numOfFiles="Amount of dummy files to create: "

REM Prompt for the size to make the files, in MB.
set /p sizeOfFiles="Size to make dummy files (in MB): "

REM Prompt for the directory to create the files.
set /p createLocation="Dir to create dummy files: "

REM Converts size entered by user to bytes.
set /a sizeOfFilesBytes=%sizeOfFiles% * 1000000

REM For loop that uses fsutil to create the files, naming each file with 
REM incrementing integer at the end.
for /L %%I in (1,1,%numOfFiles%) do fsutil file createnew "%createLocation%\dummy%%I.txt" %sizeOfFilesBytes%

REM Pauses script so it isn't just an abrupt closing of the cmd window.
pause