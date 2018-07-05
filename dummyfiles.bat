set /p numOfFiles="Amount of dummy files to create: "
set /p sizeOfFiles="Size to make dummy files (in MB): "
set /p createLocation="Dir to create dummy files: "
set /a sizeOfFilesBytes=%sizeOfFiles% * 1000000

for /L %%I in (1,1,%numOfFiles%) do fsutil file createnew "%createLocation%\dummy%%I.txt" %sizeOfFilesBytes%

pause