@echo off
:StartOfProgram
set counter=0
set secretNumber=0
set guess=0

:playAgain
set /a secretNumber =%random% %% 5
echo correct ans: %secretNumber%
set counter=0
echo I am thinking of a number between 0 and 5.
echo Can you guess the number in 5 tries or less?

:guess
set /p guess="Enter your number (0-5) : "
if %guess% GTR %secretNumber% goto :high
if %guess% LSS %secretNumber% goto :low

if %guess%==%secretNumber% goto :win

:max
set /a counter=%counter%+1
if %counter%==3 goto :lose
goto :guess

:lose
echo Sorry, you lose.
goto:last

:win
echo Congratulation, you win. Thanks for playing! 
goto:last

:high
echo Your Number is High !
goto :max

:low
echo Your Number is Low !
goto :max

:last
set /p playagain="Do you wanna play again,please give your answer in (y/n)"
if %playagain%==y goto :playAgain
if %playagain%==n goto :lastt

:lastt
pause