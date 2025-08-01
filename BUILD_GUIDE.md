# 📱 CamConnect Android APK Build Guide

## 🚀 Multiple Ways to Build Your APK

### Method 1: GitHub Actions (Recommended) ⭐
**✅ Most Reliable - Builds in the cloud**

1. **Push to GitHub** (already done!)
   ```bash
   git add .
   git commit -m "Add GitHub Actions build workflow"
   git push origin main
   ```

2. **Trigger Build**
   - Go to your GitHub repository: https://github.com/cookiealias1983/CamConnect
   - Click "Actions" tab
   - Click "Build Android APK" workflow
   - Click "Run workflow" button
   - Wait 5-10 minutes for build to complete

3. **Download APK**
   - Once build completes, click on the build
   - Scroll down to "Artifacts" section
   - Download "camconnect-debug-apk" or "camconnect-release-apk"
   - Extract the ZIP file to get your APK

### Method 2: Android Studio (Easiest) 🎯
**✅ Best for development and testing**

1. **Install Android Studio**
   - Download from: https://developer.android.com/studio
   - Install with default settings

2. **Open Project**
   - Launch Android Studio
   - Choose "Open an existing Android Studio project"
   - Navigate to your android-app folder
   - Wait for Gradle sync to complete

3. **Build APK**
   - Go to `Build` → `Build Bundle(s) / APK(s)` → `Build APK(s)`
   - Wait for build to complete
   - Click "locate" when build finishes
   - APK will be at: `app/build/outputs/apk/debug/app-debug.apk`

### Method 3: Command Line (Advanced) 🖥️
**✅ For developers familiar with command line**

**Requirements:**
- Java JDK 17 or newer
- Android SDK properly configured
- ANDROID_HOME environment variable set

**Commands:**
```bash
# Set environment variables (Windows)
set ANDROID_HOME=C:\Users\%USERNAME%\AppData\Local\Android\Sdk
set JAVA_HOME=C:\Program Files\Java\jdk-17

# Build debug APK
gradlew assembleDebug

# Build release APK  
gradlew assembleRelease

# Run tests
gradlew test
```

### Method 4: Online Build Services 🌐
**✅ No local setup required**

1. **GitHub Codespaces**
   - Open repository in GitHub
   - Click "Code" → "Codespaces" → "Create codespace"
   - Run build commands in browser-based VS Code

2. **GitPod**
   - Visit: https://gitpod.io/#https://github.com/cookiealias1983/CamConnect
   - Wait for environment to load
   - Run: `./gradlew assembleDebug`

## 📦 APK Information

**Package Details:**
- **Package Name**: `com.camconnect.android`
- **Version**: 1.0 (Version Code: 1)
- **Min SDK**: Android 7.0 (API 24)
- **Target SDK**: Android 14 (API 34)
- **Size**: ~15-25MB (estimated)

**Features Included:**
- Modern Jetpack Compose UI
- WebRTC streaming capability
- CameraX integration
- Material 3 design
- Network connectivity management

## 📱 Installation Guide

### Install on Android Device

1. **Enable Unknown Sources**
   - Go to Settings → Security
   - Enable "Unknown Sources" or "Install from Unknown Sources"

2. **Transfer APK**
   - Copy APK file to device (USB, email, cloud storage)
   - Or use ADB: `adb install app-debug.apk`

3. **Install**
   - Tap the APK file on device
   - Follow installation prompts
   - Grant required permissions

### Required Permissions
- **Camera**: For video capture
- **Microphone**: For audio streaming
- **Internet**: For network communication
- **Network State**: For connection monitoring

## 🛠️ Troubleshooting

### Build Issues
- **Gradle path errors**: Use GitHub Actions or Android Studio
- **Java not found**: Install JDK 17 or use Android Studio's bundled JDK
- **SDK not found**: Install Android Studio with SDK

### Runtime Issues
- **App crashes**: Check device meets minimum requirements (Android 7.0+)
- **Camera not working**: Grant camera permissions in device settings
- **Connection fails**: Ensure server is running and reachable

## 🚀 Next Steps

1. **Build APK** using preferred method above
2. **Install on device** and test basic functionality
3. **Set up server connection** (use C# receiver from main project)
4. **Test streaming** between Android app and web receiver
5. **Deploy to Play Store** when ready for distribution

---

**Happy Building! 📱🔨**
