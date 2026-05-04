@echo off
setlocal enabledelayedexpansion

REM Set ESC variable to ASCII 27
for /F %%A in ('echo prompt $E ^| cmd') do set "ESC=%%A"

REM Use bright cyan (96m) and reset (0m)
echo(%ESC%[96m                                                                                                                      
echo       *******      *                                                     ***** **                                      
echo     *       ***  **                                                   ******  ***                                      
echo    *         **  **                                                 **    *  * ***             **                      
echo    **        *   **                                                *     *  *   ***            **                      
echo     ***          **         **   ****         ****                      *  *     ***            **    ***      ****    
echo    ** ***        **  ***     **    ***  *    * ***  *    ***           ** **      **    ***      **    ***    * **** * 
echo     *** ***      ** * ***    **     ****    *   ****    * ***          ** **      **   * ***     **     ***  **  ****  
echo       *** ***    ***   *     **      **    **    **    *   ***         ** **      **  *   ***    **      ** ****       
echo         *** ***  **   *      **      **    **    **   **    ***        ** **      ** **    ***   **      **   ***      
echo           ** *** **  *       **      **    **    **   ********         ** **      ** ********    **      **     ***    
echo            ** ** ** **       **      **    **    **   *******          *  **      ** *******     **      **       ***  
echo             * *  ******      **      **    **    **   **                  *       *  **          **      *   ****  **  
echo   ***        *   **  ***      *********    *******    ****    *      *****       *   ****    *    *******   * **** *   
echo  *  *********    **   *** *     **** ***   ******      *******      *   *********     *******      *****       ****    
echo *     *****       **   ***            ***  **           *****      *       ****        *****                           
echo *                              *****   *** **                      *                                                   
echo  **                          ********  **  **                       **                                                 
echo                            *      ****     **                                                                                                                                                                                                                                                                                                                    
echo(%ESC%[0m

git pull
echo %ESC%[31mPulled repository%ESC%[0m

REM Prompt for commit message
set /p commitmsg=Enter commit message: 

REM Commit with the message entered
git add .
git commit --allow-empty-message -m "%commitmsg%"

REM Display commit message in green
echo %ESC%[92mCommit message set: "%commitmsg%"%ESC%[0m

git push
echo %ESC%[31mPushed to GitHub%ESC%[0m

echo %ESC%[92mFinished%ESC%[0m

pause

The only 360's still on launch kernel are:

1) 360s that RROD'd before end of 2006 essentially making them frozen time capsules. Since they've been paperweights for 19 years, over 99% of these have either been repaired or destroyed. Probably 100-200 of these remaining.

2) Sealed launch 360s. It has been speculated that there are fewer than 100 of these remaining. 

3) Early Xenon 360s that were simply never updated or connected to the Internet. This is probably the most sizeable segment still remaining and I'd assume there are a few thousand of these.

Out of around 35 million (?) remaining Xbox 360's, only around 5000-6000 are on non-1080 Blades and probably <5% of these are 1) in use and 2) connected to an HDTV.

All of these consoles can be updated to the latest kernel.

I'd say that the statement "The 360 can do 1080p" is accurate enough.
