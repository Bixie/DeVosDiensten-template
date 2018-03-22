@echo off
setlocal

SET sym_dir=C:\BixieProjects\DeVosDiensten\html
SET target_devos=C:\BixieProjects\DeVosDiensten\bixie-devos
SET target_mailing=C:\BixieProjects\DeVosDiensten\bixie-mailing

rmdir /s /q %sym_dir%\administrator\components\com_bix_devos
rmdir /s /q %sym_dir%\components\com_bix_devos
rmdir /s /q %sym_dir%\administrator\components\com_bixmailing
rmdir /s /q %sym_dir%\components\com_bixmailing
rmdir /s /q %sym_dir%\plugins\system\bixsystem
rmdir /s /q %sym_dir%\plugins\user\profile_vos

mklink /d %sym_dir%\administrator\components\com_bix_devos %target_devos%\admin
mklink /d %sym_dir%\components\com_bix_devos %target_devos%\front
mklink /d %sym_dir%\administrator\components\com_bixmailing %target_mailing%\admin
mklink /d %sym_dir%\components\com_bixmailing %target_mailing%\front
mklink /d %sym_dir%\plugins\system\bixsystem %target_mailing%\plugins\system\bixsystem
mklink /d %sym_dir%\plugins\user\profile_vos %target_mailing%\plugins\user\profile_vos

endlocal
