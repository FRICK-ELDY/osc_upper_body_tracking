@echo off
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

REM === Resolve repo root (one level up from this script) ===
set "SCRIPT_DIR=%~dp0"
for %%I in ("%SCRIPT_DIR%\..") do set "ROOT=%%~fI"

REM === Paths & names ===
set "RUST_CRATE=%ROOT%\rust\ubct"
set "DLL_SRC=%RUST_CRATE%\target\release\ubct.dll"
set "EXAMPLE_DIR=%ROOT%\example"
set "RUNNER_DIR=%EXAMPLE_DIR%\build\windows\x64\runner\Debug"
set "DLL_DST=%RUNNER_DIR%\ubct.dll"

echo [1/4] Building Rust (release): %RUST_CRATE%
cargo build --manifest-path "%RUST_CRATE%\Cargo.toml" --release
if errorlevel 1 goto :err

if not exist "%DLL_SRC%" (
  echo [ERR] DLL not found: "%DLL_SRC%"
  goto :err
)

echo [2/4] Flutter deps and Windows (debug) build: %EXAMPLE_DIR%
pushd "%EXAMPLE_DIR%" >nul
call flutter pub get
if errorlevel 1 goto :err

call flutter build windows --debug
if errorlevel 1 goto :err

if not exist "%RUNNER_DIR%" (
  echo [ERR] Runner directory not found: "%RUNNER_DIR%"
  goto :err
)

echo [3/4] Copy DLL -> runner: 
echo        "%DLL_SRC%"
echo        -> "%DLL_DST%"
copy /Y "%DLL_SRC%" "%DLL_DST%" >nul
if errorlevel 1 goto :err
popd >nul

echo [4/4] Launching: flutter run -d windows
pushd "%EXAMPLE_DIR%" >nul
call flutter run -d windows
set "RC=%ERRORLEVEL%"
popd >nul

exit /b %RC%

:err
echo.
echo **** FAILED ****  Check the messages above.
exit /b 1
