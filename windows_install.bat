@echo off
copy .vimrc %HOMEPATH%\_vimrc
mkdir %HOMEPATH%\vimfiles
robocopy autoload %HOMEPATH%\vimfiles\autoload /S /LOG+:%HOMEPATH%\vimfiles\windows_install.log
robocopy bundle %HOMEPATH%\vimfiles\bundle /S /LOG+:%HOMEPATH%\vimfiles\windows_install.log
robocopy colors %HOMEPATH%\vimfiles\colors /S /LOG+:%HOMEPATH%\vimfiles\windows_install.log
robocopy after %HOMEPATH%\vimfiles\after /S /LOG+:%HOMEPATH%\vimfiles\windows_install.log
robocopy .ycm_extra_conf.py %HOMEPATH%\vimfiles\ /S /LOG+:%HOMEPATH%\vimfiles\windows_install.log
