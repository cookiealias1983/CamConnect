@echo off
REM CamConnect APK Builder - Workaround for path issues

echo 🚀 CamConnect Android APK Builder
echo =================================
echo.

REM Set environment variables
set ANDROID_HOME=%LOCALAPPDATA%\Android\Sdk
set JAVA_HOME=C:\Program Files\java-1.8.0-openjdk-1.8.0.392-1.b08.redhat.windows.x86_64

echo 📱 Building CamConnect APK...
echo   Android SDK: %ANDROID_HOME%
echo   Java Home: %JAVA_HOME%
echo.

REM Check if Android SDK exists
if not exist "%ANDROID_HOME%" (
    echo ❌ ERROR: Android SDK not found at %ANDROID_HOME%
    echo Please install Android Studio and SDK
    pause
    exit /b 1
)

REM Check if Java exists
if not exist "%JAVA_HOME%" (
    echo ❌ ERROR: Java not found at %JAVA_HOME%
    echo Please install Java JDK
    pause
    exit /b 1
)

echo ✅ Environment check passed
echo.

REM Copy project to temp location to avoid path issues
set TEMP_PROJECT=C:\temp\camconnect-build
echo 📂 Copying project to temp location to avoid path spaces...
if exist "%TEMP_PROJECT%" rmdir /s /q "%TEMP_PROJECT%"
mkdir "%TEMP_PROJECT%"
xcopy /e /i /q . "%TEMP_PROJECT%"

echo 🔨 Attempting to build APK...
cd /d "%TEMP_PROJECT%"

REM Set Gradle user home to avoid path issues
set GRADLE_USER_HOME=C:\temp\.gradle

REM Try to run gradlew
echo Trying Gradle wrapper...
call gradlew.bat assembleDebug

if %ERRORLEVEL% equ 0 (
    echo.
    echo ✅ APK built successfully!
    echo 📍 Location: %TEMP_PROJECT%\app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo 📋 APK Information:
    if exist "app\build\outputs\apk\debug\app-debug.apk" (
        for %%A in ("app\build\outputs\apk\debug\app-debug.apk") do echo    Size: %%~zA bytes
        echo    Package: com.camconnect.android
        echo    Version: 1.0
        echo    Min SDK: 24 (Android 7.0)
        echo    Target SDK: 34 (Android 14)
    )
    echo.
    echo 📱 Installation Instructions:
    echo 1. Transfer APK to your Android device
    echo 2. Enable "Unknown Sources" in device settings
    echo 3. Tap the APK file to install
    echo.
    echo Or use ADB: adb install app-debug.apk
    
    REM Copy APK back to original location
    if exist "app\build\outputs\apk\debug\app-debug.apk" (
        copy "app\build\outputs\apk\debug\app-debug.apk" "%~dp0"
        echo ✅ APK copied to project root: %~dp0app-debug.apk
    )
) else (
    echo.
    echo ❌ Build failed with Gradle wrapper
    echo.
    echo 🔧 Alternative Options:
    echo 1. 📱 Use Android Studio:
    echo    • Open this project in Android Studio
    echo    • Go to Build → Build Bundle(s) / APK(s) → Build APK(s)
    echo    • APK will be in app\build\outputs\apk\debug\
    echo.
    echo 2. 🌐 Use GitHub Actions (CI/CD):
    echo    • Push to GitHub
    echo    • Set up GitHub Actions workflow
    echo    • Download built APK from Actions artifacts
    echo.
    echo 3. 🐳 Use Docker:
    echo    • Use Android build Docker image
    echo    • Build in containerized environment
)

echo.
echo 🏁 Build process completed.
cd /d "%~dp0"
pause
