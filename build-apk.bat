@echo off
echo Building CamConnect Android APK...
echo.

echo Checking for Android SDK...
if "%ANDROID_HOME%"=="" (
    echo ERROR: ANDROID_HOME environment variable is not set.
    echo Please set ANDROID_HOME to your Android SDK location.
    echo Example: set ANDROID_HOME=C:\Users\%USERNAME%\AppData\Local\Android\Sdk
    pause
    exit /b 1
)

echo Android SDK found at: %ANDROID_HOME%

echo.
echo Attempting to build APK...
echo.

REM Try to use gradlew if available
if exist "gradlew.bat" (
    echo Using Gradle wrapper...
    call gradlew.bat assembleDebug
    if %ERRORLEVEL% equ 0 (
        echo.
        echo APK built successfully!
        echo Location: app\build\outputs\apk\debug\app-debug.apk
        goto :success
    )
)

echo Gradle wrapper failed, trying alternative methods...

REM Try to use Android Studio command line tools
if exist "%ANDROID_HOME%\tools\bin\sdkmanager.bat" (
    echo Using Android SDK tools...
    "%ANDROID_HOME%\tools\bin\sdkmanager.bat" --list
    echo.
    echo Please use Android Studio to build the APK:
    echo 1. Open Android Studio
    echo 2. Open this project folder
    echo 3. Go to Build -^> Build Bundle(s) / APK(s) -^> Build APK(s)
    echo 4. The APK will be in app\build\outputs\apk\debug\
)

:success
echo.
echo Build process completed.
pause 