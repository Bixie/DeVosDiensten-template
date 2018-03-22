@echo off
setlocal
:PROMPT
SET /P AREYOUSURE=Importeer database? (Y/N)?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

SET sql_importfile=devosdev_dienew.sql
SET dev_db=devos
SET dev_db_user=devos
SET dev_db_pass=devos


mysql -u %dev_db_user% -p%dev_db_pass% %dev_db% < ./sql/%sql_importfile% || exit

echo Database geimporteerd.

:END
endlocal
