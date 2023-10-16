@echo on

set publishDir=..\pulish-stride
set srcDir=.\sources\editor\Stride.GameStudio\bin\Debug
xcopy %srcDir% %publishDir%\  /q /e /r /S /Y

set publishDir=..\pulish-stride\packages
set srcDir=.\bin\packages
xcopy %srcDir% %publishDir%\  /q /e /r /S /Y

cd ..\pulish-stride
git add .
git commit -m "."
git push -u cal
echo "finish"
pause
