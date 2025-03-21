@echo off
chcp 65001 > nul
setlocal

set "JAVA_VERSIONS_DIR=C:\Program Files\Java"
set "MICROSOFT_JAVA_DIR=C:\Program Files\Microsoft"

if "%1"=="ls" (
  call :list_java_versions
  goto :eof
)

if "%1"=="current" (
  call :show_current_java_version
  goto :eof
)

if "%1"=="install" (
  if "%2"=="" (
    echo Uso: jman install [versão]
    goto :eof
  )
  call :install_java_version "%2"
  goto :eof
)

if "%1"=="" (
  call :usage
  goto :eof
)

call :set_java_version "%1"
goto :eof

:usage
echo.
echo Java Manager - Gerenciador de versões do Java
echo.
echo Comandos:
echo.
echo   jman            Exibe esta mensagem
echo   jman ls         Lista as versões Java instaladas
echo   jman current    Exibe a versão Java ativa
echo   jman [versão]   Define a versão Java ativa
echo   jman install [versão] Instala uma versão Java
echo.
goto :eof


:list_java_versions
echo.
echo Versões Java instaladas:
echo.
for /d %%a in ("%JAVA_VERSIONS_DIR%\jdk*" "%MICROSOFT_JAVA_DIR%\jdk*") do (
  echo   %%~nxa
)
echo.
goto :eof

::Exibe a versão atual selecionada
:show_current_java_version
echo.
if not defined JAVA_HOME (
    echo Nenhuma versão do JDK está configurada.
    goto :eof
)

for %%A in ("%JAVA_HOME%") do set "java_version=%%~nxA"

echo Versão Java ativa: %java_version%
echo.
goto :eof

::Troca a versão do Java
:set_java_version
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c %~f0 %*' -Verb RunAs -WindowStyle Hidden"
)

set "JAVA_VERSION_DIR="

for /d %%a in ("%JAVA_VERSIONS_DIR%\jdk*%1*" "%MICROSOFT_JAVA_DIR%\jdk*%1*") do (
    set "JAVA_VERSION_DIR=%%a"
)

if "%JAVA_VERSION_DIR%"=="" (
    echo Versão Java %1 não encontrada.
    goto :eof
)

set "JAVA_HOME=%JAVA_VERSION_DIR%"

setx JAVA_HOME "%JAVA_HOME%" /M >nul 2>&1

echo.
echo Versão Java definida para %1.
echo.

goto :eof

::Instala uma versão do Java
:install_java_version
echo Instalando Java %1...

winget --version >nul 2>&1
if %errorLevel% neq 0 (
    echo Erro: O winget não está disponível neste sistema.
    echo Baixe e instale manualmente em: https://aka.ms/getwinget
    goto :eof
)

echo Baixando e instalando OpenJDK %1...
winget install --id "Microsoft.OpenJDK.%1" --silent --accept-package-agreements --accept-source-agreements

if %errorLevel% neq 0 (
    echo Erro: Falha ao instalar o OpenJDK %1 via winget.
    echo Tente instalar manualmente a partir do site oficial: https://aka.ms/openjdk
    goto :eof
)

echo Instalação concluída com sucesso para Java %1.
goto :eof


endlocal