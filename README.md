# SSL Lanka Online Shop - Mobile App

Flutter mobile application for SSL Lanka Online Shop (WordPress/WooCommerce website).

## Features

✅ **Cross-Platform**: Works on both iOS and Android
✅ **WebView Integration**: Displays your WordPress website seamlessly
✅ **Offline Detection**: Alerts users when there's no internet connection
✅ **Pull-to-Refresh**: Easy content refresh functionality
✅ **Back Navigation**: Smart back button handling
✅ **External Links**: Opens external links in browser
✅ **Share Functionality**: Share app with friends
✅ **Splash Screen**: Professional app launch experience
✅ **Deep Linking**: Support for direct website links

## Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK
- Android Studio (for Android development)
- Xcode (for iOS development - macOS only)
- CocoaPods (for iOS dependencies)

## Installation & Setup

### 1. Install Flutter

If you haven't installed Flutter yet:
- Visit [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
- Follow the instructions for your operating system

### 2. Clone/Setup the Project

```bash
cd /Users/hmjay/Desktop/sslanka
flutter pub get
```

### 3. Run the App

#### For Android:
```bash
flutter run
# or for release build
flutter build apk --release
```

#### For iOS:
```bash
cd ios
pod install
cd ..
flutter run
# or for release build
flutter build ios --release
```

## Building for Production

### Android (APK/AAB)

1. **Create a keystore** (one-time setup):
```bash
keytool -genkey -v -keystore ~/sslanka-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias sslanka
```

2. **Create `android/key.properties`**:
```properties
storePassword=your_store_password
keyPassword=your_key_password
keyAlias=sslanka
storeFile=/Users/hmjay/sslanka-key.jks
```

3. **Update `android/app/build.gradle`** (add before `android {` block):
```gradle
def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject.file('key.properties')
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
}
```

And replace the `signingConfigs` section:
```gradle
signingConfigs {
    release {
        keyAlias keystoreProperties['keyAlias']
        keyPassword keystoreProperties['keyPassword']
        storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
        storePassword keystoreProperties['storePassword']
    }
}
buildTypes {
    release {
        signingConfig signingConfigs.release
    }
}
```

4. **Build release APK**:
```bash
flutter build apk --release
```

5. **Build App Bundle** (for Google Play Store):
```bash
flutter build appbundle --release
```

### iOS (IPA)

1. Open Xcode:
```bash
open ios/Runner.xcworkspace
```

2. Configure Signing & Capabilities:
   - Select Runner in the project navigator
   - Select the Runner target
   - Go to "Signing & Capabilities"
   - Select your Team
   - Update Bundle Identifier: `com.sslanka.shop`

3. Archive the app:
   - Select "Any iOS Device" as the target
   - Product → Archive
   - Distribute App → App Store Connect / Ad Hoc

## Publishing

### Google Play Store

1. Create a Google Play Developer account ($25 one-time fee)
2. Create a new app in Play Console
3. Upload the AAB file from `build/app/outputs/bundle/release/app-release.aab`
4. Fill in app details, screenshots, descriptions
5. Submit for review

### Apple App Store

1. Enroll in Apple Developer Program ($99/year)
2. Create app in App Store Connect
3. Upload IPA using Xcode or Transporter app
4. Fill in app details, screenshots, descriptions
5. Submit for review

## Customization

### Change App Name
- **Android**: Edit `android/app/src/main/AndroidManifest.xml` → `android:label`
- **iOS**: Edit `ios/Runner/Info.plist` → `CFBundleDisplayName`

### Change App Icon
1. Create app icons (1024x1024 PNG)
2. Use a tool like [https://appicon.co/](https://appicon.co/) to generate all sizes
3. Replace icons in:
   - `android/app/src/main/res/mipmap-*/ic_launcher.png`
   - `ios/Runner/Assets.xcassets/AppIcon.appiconset/`

### Change Website URL
Edit `lib/screens/webview_screen.dart`:
```dart
final String homeUrl = 'https://your-website.com/';
```

### Change Package Name/Bundle ID

**Android**: Use `change_app_package_name` package or manually update:
- `android/app/build.gradle` → `applicationId`
- `android/app/src/main/kotlin/` folder structure
- `AndroidManifest.xml` → package name

**iOS**: Update in Xcode → Runner → General → Bundle Identifier

## Project Structure

```
sslanka/
├── android/              # Android native code
├── ios/                  # iOS native code
├── lib/
│   ├── main.dart        # App entry point
│   └── screens/
│       ├── splash_screen.dart    # Splash screen
│       └── webview_screen.dart   # Main WebView screen
├── assets/              # App assets (images, icons)
└── pubspec.yaml         # Dependencies
```

## Dependencies

- **webview_flutter**: WebView implementation
- **connectivity_plus**: Internet connectivity check
- **url_launcher**: Launch external URLs
- **share_plus**: Share functionality
- **permission_handler**: Handle permissions

## Support

For issues or questions:
- Website: https://sslankaonlineshop.com/
- Email: support@sslankaonlineshop.com

## License

Copyright © 2026 SSL Lanka Online Shop. All rights reserved.
