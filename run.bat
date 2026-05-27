@echo off
setlocal
cd /d "%~dp0"

if not exist bin mkdir bin
if not exist bin\spa-dz3.exe (
    g++ -std=c++17 -Wall -Wextra -pedantic -O2 src\main.cpp -o bin\spa-dz3.exe -lsfml-graphics -lsfml-window -lsfml-system
    if errorlevel 1 pause & exit /b 1
)

bin\spa-dz3.exe
