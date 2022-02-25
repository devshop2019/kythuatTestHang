@echo off

:getName
echo Nhap ten nguoi update
set /p name="> "

if '%name%'=='' goto getName

echo %name%

:getinfocontent
echo Nhap noi dung update
set /p content="> "

if '%content%'=='' goto getinfocontent

echo %content%

set commitContent="%name% %content%"

REM set toc=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

git gc
git prune

git status
set /p DUMMY=Hit ENTER to continue...ADD

git add .
set /p DUMMY=Hit ENTER to continue...COMMIT

git commit -m%commitContent%
set /p DUMMY=Hit ENTER to continue...PUSH

git push
set /p DUMMY=Hit ENTER to continue...

set /p DUMMY=Hit ENTER to continue...
set /p DUMMY=Hit ENTER to continue...