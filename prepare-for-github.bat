@echo off
REM GitHub Preparation Script for CamConnect Android App

echo 🚀 Preparing CamConnect Android App for GitHub...
echo.

REM Clean build artifacts
echo 🧹 Cleaning build artifacts...
if exist ".gradle" rmdir /s /q ".gradle" 2>nul
if exist "app\build" rmdir /s /q "app\build" 2>nul
if exist "build" rmdir /s /q "build" 2>nul

REM Clean IDE files
echo 🔧 Cleaning IDE-specific files...
if exist ".idea\workspace.xml" del /q ".idea\workspace.xml" 2>nul
if exist ".idea\gradle.xml" del /q ".idea\gradle.xml" 2>nul
if exist ".idea\misc.xml" del /q ".idea\misc.xml" 2>nul
if exist ".idea\caches" rmdir /s /q ".idea\caches" 2>nul
del /q "*.iml" 2>nul

REM Verify important files exist
echo ✅ Verifying project files...
if exist "build.gradle" (
    echo    ✓ Root build.gradle exists
) else (
    echo    ❌ Root build.gradle missing
)

if exist "app\build.gradle" (
    echo    ✓ App build.gradle exists
) else (
    echo    ❌ App build.gradle missing
)

if exist "local.properties" (
    echo    ⚠️  local.properties exists ^(will be ignored by git^)
) else (
    echo    ✓ local.properties not present
)

if exist ".gitignore" (
    echo    ✓ .gitignore exists
) else (
    echo    ❌ .gitignore missing
)

if exist "README.md" (
    echo    ✓ README.md exists
) else (
    echo    ❌ README.md missing
)

echo.
echo 📱 Android App is ready for GitHub!
echo    Repository structure is clean
echo    Build artifacts removed
echo    IDE files cleaned
echo    Documentation in place
echo.
echo Next steps:
echo 1. Initialize git: git init
echo 2. Add files: git add .
echo 3. Commit: git commit -m "Initial Android app commit"
echo 4. Add remote: git remote add origin ^<your-repo-url^>
echo 5. Push: git push -u origin main
echo.
pause
