@echo off
echo Patching Git configuration...
echo.

:: Set new user configuration
git config --global user.name "Reim-Muhieddin"
git config --global user.email "softwarereem@gmail.com"

:: Remove cached credentials from Windows Credential Manager
cmdkey /delete:git:https://github.com
cmdkey /delete:git:https://gitlab.com
cmdkey /delete:git:https://bitbucket.org

:: Remove Git credential helper cache
git config --global --unset credential.helper

:: Alternative: Use Windows credential manager (recommended)
git config --global credential.helper manager

echo.
echo Git configuration updated successfully!
echo User:Reim-Muhieddin
echo Email: softwarereem@gmail.com
echo Credentials cleared from Windows Credential Manager
pause