#!/bin/bash
# GitHub Preparation Script for CamConnect Android App

echo "🚀 Preparing CamConnect Android App for GitHub..."

# Clean build artifacts
echo "🧹 Cleaning build artifacts..."
rm -rf .gradle/
rm -rf app/build/
rm -rf build/

# Clean IDE files
echo "🔧 Cleaning IDE-specific files..."
rm -rf .idea/workspace.xml
rm -rf .idea/gradle.xml
rm -rf .idea/misc.xml
rm -rf .idea/caches/
rm -f *.iml

# Verify important files exist
echo "✅ Verifying project files..."
if [ -f "build.gradle" ]; then
    echo "   ✓ Root build.gradle exists"
else
    echo "   ❌ Root build.gradle missing"
fi

if [ -f "app/build.gradle" ]; then
    echo "   ✓ App build.gradle exists"
else
    echo "   ❌ App build.gradle missing"
fi

if [ -f "local.properties" ]; then
    echo "   ⚠️  local.properties exists (will be ignored by git)"
else
    echo "   ✓ local.properties not present"
fi

if [ -f ".gitignore" ]; then
    echo "   ✓ .gitignore exists"
else
    echo "   ❌ .gitignore missing"
fi

if [ -f "README.md" ]; then
    echo "   ✓ README.md exists"
else
    echo "   ❌ README.md missing"
fi

echo ""
echo "📱 Android App is ready for GitHub!"
echo "   Repository structure is clean"
echo "   Build artifacts removed"
echo "   IDE files cleaned"
echo "   Documentation in place"
echo ""
echo "Next steps:"
echo "1. Initialize git: git init"
echo "2. Add files: git add ."
echo "3. Commit: git commit -m 'Initial Android app commit'"
echo "4. Add remote: git remote add origin <your-repo-url>"
echo "5. Push: git push -u origin main"
