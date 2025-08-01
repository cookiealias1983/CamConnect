# CamConnect Android App

A modern Android application for real-time camera streaming using Jetpack Compose and WebRTC.

## 📱 Features

- **Real-time Camera Streaming** - Stream camera feed over WiFi, 4G, and 5G networks
- **Modern UI** - Built with Jetpack Compose and Material 3 design
- **WebRTC Integration** - High-quality, low-latency video streaming
- **Network Flexibility** - Automatic network switching and connection management
- **Beautiful Interface** - Clean, intuitive user experience

## 🛠 Technology Stack

- **Language**: Kotlin
- **UI Framework**: Jetpack Compose
- **Camera**: CameraX
- **Streaming**: WebRTC
- **Networking**: Retrofit, OkHttp
- **Dependency Injection**: Dagger Hilt
- **Architecture**: MVVM with Compose
- **Coroutines**: Kotlin Coroutines
- **Navigation**: Navigation Compose

## 📋 Requirements

- **Min SDK**: 24 (Android 7.0)
- **Target SDK**: 34 (Android 14)
- **Compile SDK**: 34
- **Kotlin**: 1.9.x
- **Android Studio**: Arctic Fox or newer

## 🚀 Quick Start

### Prerequisites
- Android Studio installed
- Android SDK with API level 34
- Device or emulator running Android 7.0+

### Building the App

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd android-app
   ```

2. **Open in Android Studio**
   - Launch Android Studio
   - Select "Open an existing Android Studio project"
   - Navigate to the `android-app` folder

3. **Sync Project**
   - Wait for Gradle sync to complete
   - Download any missing dependencies

4. **Build APK**
   - Go to `Build` → `Build Bundle(s) / APK(s)` → `Build APK(s)`
   - Or use keyboard shortcut: `Ctrl+Shift+F9`

5. **Install on Device**
   - APK location: `app/build/outputs/apk/debug/app-debug.apk`
   - Transfer to device and install, or use ADB

### Command Line Build (Alternative)

```bash
# Make sure ANDROID_HOME is set
set ANDROID_HOME=C:\Users\%USERNAME%\AppData\Local\Android\Sdk

# Run the build script
build-apk.bat

# Or use Gradle directly
gradlew assembleDebug
```

## 🔧 Configuration

### Server Connection
1. Open the CamConnect app
2. Go to Settings
3. Enter server URL (e.g., `https://192.168.1.100:5001`)
4. Tap Connect

### Permissions Required
- **Camera**: For video capture
- **Microphone**: For audio streaming (optional)
- **Internet**: For network communication
- **Network State**: For connection monitoring

## 📦 Dependencies

### Core Android
- AndroidX Core KTX 1.12.0
- Lifecycle Runtime KTX 2.7.0
- Activity Compose 1.8.2

### UI & Compose
- Compose BOM 2024.01.00
- Material 3
- Navigation Compose 2.8.0

### Camera & Streaming
- CameraX 1.3.1
- WebRTC 1.0.32006

### Networking
- Retrofit 2.9.0
- OkHttp 4.12.0

### Architecture
- Hilt 2.48 (Dependency Injection)
- Coroutines 1.7.3
- ViewModel Compose 2.7.0

## 🏗 Project Structure

```
app/
├── src/main/java/com/camconnect/android/
│   ├── CamConnectApplication.kt    # Application class
│   ├── MainActivity.kt             # Main activity
│   └── ui/                         # UI components and screens
├── src/main/res/                   # Resources
├── src/androidTest/                # Instrumented tests
├── src/test/                       # Unit tests
└── build.gradle                    # App-level build configuration
```

## 🔒 Security Notes

- Uses HTTPS for secure communication
- WebRTC provides encrypted peer-to-peer streaming
- No sensitive data stored locally
- Camera permissions requested at runtime

## 🧪 Testing

### Run Unit Tests
```bash
gradlew test
```

### Run Instrumented Tests
```bash
gradlew connectedAndroidTest
```

## 🚀 Release Build

For production releases:

1. **Create Release Build**
   ```bash
   gradlew assembleRelease
   ```

2. **Sign APK** (requires keystore setup)
   - Configure signing in `app/build.gradle`
   - Use Android Studio's "Generate Signed Bundle/APK" wizard

## 📱 Installation

### Install via ADB
```bash
adb install app/build/outputs/apk/debug/app-debug.apk
```

### Manual Installation
1. Enable "Unknown Sources" in device settings
2. Transfer APK to device
3. Tap APK file to install

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

## 🔗 Related Projects

- [CamConnect C# Receiver](../csharp-receiver/) - Web-based streaming receiver
- [CamConnect Documentation](../docs/) - Complete setup guides

---

**Happy Streaming! 🎥📱**
