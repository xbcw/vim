@echo off
copy .vimrc %HOMEPATH%\_vimrc
mkdir %HOMEPATH%\vimfiles
robocopy autoload %HOMEPATH%\vimfiles\autoload /S /LOG+:%HOMEPATH%\vimfiles\windows_install.log
robocopy bundle %HOMEPATH%\vimfiles\bundle /S /LOG+:%HOMEPATH%\vimfiles\windows_install.log
robocopy colors %HOMEPATH%\vimfiles\colors /S /LOG+:%HOMEPATH%\vimfiles\windows_install.log
