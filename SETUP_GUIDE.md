# 🚀 SSL Lanka Shop App - Quick Start Guide (Sinhala/සිංහල)

## මුලින්ම කළ යුතු දේ / Getting Started

### 1. Flutter Install කරගන්න
Windows/Mac/Linux එකට Flutter SDK එක install කරන්න:
```
https://flutter.dev/docs/get-started/install
```

### 2. Dependencies Install කරන්න
```bash
cd /Users/hmjay/Desktop/sslanka
flutter pub get
```
✅ මේක දැනටමත් කරලා තියෙනවා!

### 3. App එක Run කරන්න

#### Android Phone එකේ:
```bash
# USB එකෙන් phone එක connect කරගෙන USB debugging enable කරන්න
flutter run
```

#### iOS Phone එකේ (Mac එකේ විතරක්):
```bash
cd ios
pod install
cd ..
flutter run
```

#### Emulator එකේ:
```bash
# Android Studio වලින් emulator එකක් start කරන්න
flutter emulators
flutter emulators --launch <emulator_id>
flutter run
```

## 📱 Build කරන්නේ කොහොමද? / How to Build

### Android APK (PlayStore)

1. **Release APK:**
```bash
flutter build apk --release
```
APK එක මේ folder එකේ හම්බ වෙයි:
`build/app/outputs/flutter-apk/app-release.apk`

2. **App Bundle (PlayStore වලට):**
```bash
flutter build appbundle --release
```
Bundle එක මේ folder එකේ:
`build/app/outputs/bundle/release/app-release.aab`

### iOS Build (AppStore)

**Mac එකක තිබ්බම හරි!**

1. Xcode වල open කරන්න:
```bash
open ios/Runner.xcworkspace
```

2. Xcode එකේ:
   - Runner select කරන්න
   - Signing & Capabilities වලට යන්න
   - Apple Developer account එක add කරන්න
   - Bundle ID එක change කරන්න: `com.sslanka.shop`

3. Archive කරන්න:
   - Product → Archive
   - Distribute App → App Store Connect

## 🎨 Customize කරන්නේ කොහොමද? / Customization

### Website URL එක Change කරන්න
[lib/screens/webview_screen.dart](lib/screens/webview_screen.dart) open කරලා:
```dart
final String homeUrl = 'https://sslankaonlineshop.com/'; // මේක change කරන්න
```

### App Name Change කරන්න
- **Android:** [android/app/src/main/AndroidManifest.xml](android/app/src/main/AndroidManifest.xml) → `android:label`
- **iOS:** [ios/Runner/Info.plist](ios/Runner/Info.plist) → `CFBundleDisplayName`

### App Icon Change කරන්න
1. 1024x1024 PNG icon එකක් හදන්න
2. [https://appicon.co/](https://appicon.co/) වලින් generate කරන්න
3. Icons replace කරන්න:
   - `android/app/src/main/res/mipmap-*/ic_launcher.png`
   - `ios/Runner/Assets.xcassets/AppIcon.appiconset/`

### App Colors/Theme Change කරන්න
[lib/main.dart](lib/main.dart) open කරලා:
```dart
theme: ThemeData(
  primarySwatch: Colors.blue,  // මේක change කරන්න (red, green, purple, etc.)
),
```

## 📦 PlayStore වලට Upload කරන්නේ කොහොමද?

### Google Play Console

1. **Account එකක් හදාගන්න:**
   - [https://play.google.com/console](https://play.google.com/console)
   - $25 one-time fee

2. **App Bundle Upload කරන්න:**
   - Create App button එක click කරන්න
   - App details fill කරන්න
   - Release → Production → Create new release
   - `app-release.aab` file එක upload කරන්න
   - Screenshots, descriptions add කරන්න
   - Submit for review

### Requirements:
- App screenshots (Phone & Tablet)
- Feature graphic (1024x500)
- App icon (512x512)
- Privacy policy URL (optional but recommended)
- Description (Sinhala + English both දාන්න)

## 🍎 AppStore වලට Upload කරන්නේ කොහොමද?

### Apple App Store Connect

1. **Apple Developer Account:**
   - [https://developer.apple.com](https://developer.apple.com)
   - $99/year

2. **App Store Connect වලට Upload:**
   - App Store Connect වල new app එකක් create කරන්න
   - Xcode වලින් archive කරන්න
   - Upload to App Store
   - Screenshots, descriptions add කරන්න
   - Submit for review

### Requirements:
- Screenshots (iPhone & iPad)
- App preview video (optional)
- App icon (1024x1024)
- Privacy policy URL
- Description (English + other languages)

## ⚙️ Signing Setup (Production)

### Android Signing

1. **Keystore හදාගන්න:**
```bash
keytool -genkey -v -keystore ~/sslanka-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias sslanka
```
Password එකක් දාන්න and details fill කරන්න.

2. **key.properties file එකක් හදන්න:**
`android/key.properties` file එක create කරන්න:
```properties
storePassword=your_password
keyPassword=your_password
keyAlias=sslanka
storeFile=/Users/hmjay/sslanka-key.jks
```

⚠️ **Important:** මේ files git එකට push කරන්න එපා!

## 🛠️ Troubleshooting / Problems

### Android Build Errors:
```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter pub get
flutter build apk
```

### iOS Build Errors:
```bash
cd ios
pod deintegrate
pod install
cd ..
flutter clean
flutter pub get
flutter build ios
```

### WebView White Screen:
- Internet connection check කරන්න
- Website URL එක correct ද කියලා බලන්න
- Android emulator එකේ නම් Google Play Services install කරන්න

## 📞 Support

කිසි ප්‍රශ්නයක් තියෙනවනම්:
- Website: https://sslankaonlineshop.com/
- Email: support@sslankaonlineshop.com

## ✅ Features දැන් තියෙන්නේ

✅ Android & iOS support
✅ WebView with your WordPress site
✅ Pull-to-refresh
✅ Back button navigation
✅ Internet connectivity check
✅ Share functionality
✅ Splash screen
✅ Error handling
✅ External link handling

## 🎯 මීලඟ කළ හැකි දේවල්

- [ ] Push notifications add කරන්න
- [ ] Offline page caching
- [ ] Custom splash screen with your logo
- [ ] Social media sharing
- [ ] Rate app functionality
- [ ] WhatsApp support button

---

හැම දෙයක්ම කරලා තියෙනවා! දැන් build කරලා test කරන්න. 🎉

All done! Now build and test. 🎉
