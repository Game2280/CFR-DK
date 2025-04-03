@echo off
setlocal EnableDelayedExpansion

if "%~1"=="" (
    echo Usage: decompile [jar_file] [output_folder]
    exit /b 1
)

REM Проверка существования .jar файла
if not exist "%~1" (
    echo No jar file named "%~1".
    exit /b 1
)

set "output_dir=%~2"
if "%output_dir%"=="" (
    set "output_dir=output"
)

if exist "%output_dir%" (
    echo The directory already created. Do you want to overwrite it? [Y/N]
    set /P choice="Enter your choice: "
    if /I "!choice!"=="Y" (
        rmdir /S /Q "%output_dir%"
        echo Decompilation has started...
        java -jar C:\CFR\cfr-0.152.jar "%~1" --outputdir "%output_dir%" --silent true >nul 2>&1
        REM Проверка на существование summary.txt
        if not exist "%output_dir%\summary.txt" (
            echo Error while decompiling: decompiler has finished with error.
            rmdir /S /Q "%output_dir%" 2>nul
            exit /b 1
        )
        REM Проверка summary.txt на наличие ошибки анализа .jar файла
        findstr /C:"Exception analysing jar" "%output_dir%\summary.txt" >nul
        if !errorlevel! equ 0 (
            echo Error while decompiling "%~1": the jar file has error. Try to decompile again or fix your jar file.
            rmdir /S /Q "%output_dir%"
            exit /b 1
        )
        echo Decompilation has finished and saved in: %CD%\%output_dir%
    ) else (
        echo Operation cancelled.
    )
) else (
    echo Decompilation has started...
    java -jar C:\CFR\cfr-0.152.jar "%~1" --outputdir "%output_dir%" --silent true >nul 2>&1
    REM Проверка на существование summary.txt
    if not exist "%output_dir%\summary.txt" (
        echo Error while decompiling: decompiler has finished with error.
        rmdir /S /Q "%output_dir%" 2>nul
        exit /b 1
    )
    REM Проверка summary.txt на наличие ошибки анализа .jar файла
    findstr /C:"Exception analysing jar" "%output_dir%\summary.txt" >nul
    if !errorlevel! equ 0 (
        echo Error while decompiling "%~1": the jar file has error. Try to decompile again or fix your jar file.
        rmdir /S /Q "%output_dir%"
        exit /b 1
    )
    echo Decompilation has finished and saved in: %CD%\%output_dir%
)

endlocal
