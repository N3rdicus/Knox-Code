@echo off

:start
echo Identify.
set /p "input=>
set User=%input%
if %User%==Users goto Users
if %User%==Marshall goto ALaunch
if %User%==Christian goto user
if %User%==Alex goto user
if %User%==Michael goto user
if %User%==Clear cls
if %User%==Clear echo Consule Cleared
if %User%==Clear goto start
echo Invalid Entry. Designation "%User%", Undefined.
echo Try these names.
goto Users

:Users
echo Marshall  - Creator/Admin
echo Christian - Beta User
echo Alex      - Beta User
echo Michael   - Beta User
goto start

:ALaunch
echo Should I enable advanced controls? (y/n)
set /p "input=>
if %input%==y goto password
if %input%==Y goto password
if %input%==n goto user
if %input%==N goto user
echo Command "%input%" not recongnised.
goto ALuanch

:password
set /p "input=Password:
cls
if %input%==Why goto admin
echo Incorrect Password
goto start

:admin
echo Hello Admin %User%. How can I be of assistance?
set /p "input=>
if %input%==end goto end
if %input%==restart goto start
if %input%==commands goto commands
if %input%==user goto user
if %input%==lockdown goto lockdown
if %input%==Terminate goto T1
if %input%==Note set loc=A
if %input%==Note goto Note
if %input%==Requests set loc=A
if %input%==Requests goto req
if %input%==Clear cls
if %input%==Clear echo Consule Cleared
goto admin

:req
type RequestedChanges.txt
if %loc%==A goto admin

:Note
type Note.txt
if %loc%==A goto admin
if %loc%==U goto main
goto end

:T1
start T1.bat
goto T1

:lockdown
cls
echo System Lockdown.
echo Request Admin permisions to unlock.
set /p "input=Admin Username:
if %input%==Marshall goto password
goto lockdown

:commands
echo Advanced commands
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo end       - Terminates program
echo restart   - Restarts program
echo commands  - Shows this screen
echo user      - Switches to normal user mode
echo lockdown  - Causes the program to lock until unlocked by an admin
echo Terminate - Launch T1 forced shutdown
echo Note      - Displays the included Note file
echo Requests  - Displays Requested Changes file
goto admin

:user
cls
echo Hello %User%. I am STRIKER. As of now i am not fully operational, But further updates will be comeing in the future.
set /p "input=Would you like command Assistance? (y/n)
if %input%==y goto maincommands
if %input%==Y goto maincommands
goto main

:maincommands
echo Main Terminal Commands
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo end      - Terminates program
echo commands - Shows this screen
echo restart  - Restarts program
echo Note     - Displays included Note file
goto main

:main
echo Awaiting orders.
set /p "input=>
if %input%==commands goto maincommands
if %input%==end goto end
if %input%==restart goto start
if %input%==Note set loc=U
if %input%==Note goto Note
if %input%==STRIKER goto attention
goto main

:attention
echo Sir Yes Sir
goto main

echo You have reached the end of the code. 
echo Might be a bug. Proabally. Whelp let me know if you find this.
echo Good day.
pause

:end