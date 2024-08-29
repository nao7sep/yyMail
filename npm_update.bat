@ rem Refer to Episodic/VZ40 Comments on npm_update.bat.json for comments.

cd /d "%~dp0"

set npm_dir=yyMail\obj\npm
mkdir %npm_dir%
cd %npm_dir%

call npm install bootstrap
call npm install jquery
call npm install jquery-validation
call npm install jquery-validation-unobtrusive

cd /d "%~dp0"

set lib_dir=yyMail\wwwroot\lib
mkdir %lib_dir%
cd %lib_dir%

rmdir /s /q @popperjs
rmdir /s /q bootstrap
rmdir /s /q jquery
rmdir /s /q jquery-validation
rmdir /s /q jquery-validation-unobtrusive

cd /d "%~dp0"

mkdir %lib_dir%\@popperjs
xcopy /s /q %npm_dir%\node_modules\@popperjs %lib_dir%\@popperjs
rmdir /s /q %lib_dir%\@popperjs\core\lib
del /q %lib_dir%\@popperjs\core\index.d.ts
del /q %lib_dir%\@popperjs\core\package.json
del /q %lib_dir%\@popperjs\core\README.md

mkdir %lib_dir%\bootstrap
xcopy /s /q %npm_dir%\node_modules\bootstrap %lib_dir%\bootstrap
rmdir /s /q %lib_dir%\bootstrap\js
rmdir /s /q %lib_dir%\bootstrap\scss
del /q %lib_dir%\bootstrap\package.json
del /q %lib_dir%\bootstrap\README.md

mkdir %lib_dir%\jquery
xcopy /s /q %npm_dir%\node_modules\jquery %lib_dir%\jquery
rmdir /s /q %lib_dir%\jquery\src
del /q %lib_dir%\jquery\AUTHORS.txt
del /q %lib_dir%\jquery\bower.json
del /q %lib_dir%\jquery\package.json
del /q %lib_dir%\jquery\README.md

mkdir %lib_dir%\jquery-validation
xcopy /s /q %npm_dir%\node_modules\jquery-validation %lib_dir%\jquery-validation
del /q %lib_dir%\jquery-validation\package.json
del /q %lib_dir%\jquery-validation\README.md

mkdir %lib_dir%\jquery-validation-unobtrusive
xcopy /s /q %npm_dir%\node_modules\jquery-validation-unobtrusive %lib_dir%\jquery-validation-unobtrusive
move %lib_dir%\jquery-validation-unobtrusive\dist\* %lib_dir%\jquery-validation-unobtrusive
rmdir /s /q %lib_dir%\jquery-validation-unobtrusive\dist
del /q %lib_dir%\jquery-validation-unobtrusive\package.json
del /q %lib_dir%\jquery-validation-unobtrusive\README.md

pause
