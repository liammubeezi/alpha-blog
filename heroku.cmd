@echo off
set HEROKU_CLI_BINPATH=%~dp0\heroku.cmd
"%~dp0\node.exe" "%~dp0\heroku.js" %*
