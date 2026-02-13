# 📱 Android APP Test කරන්නේ කොහොමද

## ✅ දැනට කරල තියෙන දේවල්:

- ✅ Java 21 JDK installed කරල තියෙනවා
- ✅ Android SDK installed කරල තියෙනවා
- ✅ All licenses accept කරල තියෙනවා
- ✅ Gradle & AGP configured කරල තියෙනවා

## 📦 APK Build කරන්නේ කොහොමද:

### Method 1: Script Use කරන්න (Easiest)

```bash
cd /Users/hmjay/Desktop/sslanka
./build_android.sh
```

**⏰ Important:** Build එක 5-10 minutes ගත වෙනවා. Cancel කරන්න එපා!

### Method 2: Manual Build

```bash
cd /Users/hmjay/Desktop/sslanka

# Set environment
export ANDROID_HOME=/usr/local/share/android-commandlinetools
export JAVA_HOME=$(/usr/libexec/java_home -v 21)

# Build APK
flutter build apk --release
```

**⚠️ මතක තියාගන්න:** 
- First time build එක **10-15 minutes** ගත වෙන්න පුළුවන්
- Terminal එක close කරන්න එපා
- Ctrl+C (cancel) කරන්න එපා
- "Gradle task 'assembleRelease'" කියලා පේනකොට wait කරන්න

## 📁 APK එක තියෙන්නේ කොහෙද?

Build එක success වුනාම APK එක මේ location එකේ:

```
/Users/hmjay/Desktop/sslanka/build/app/outputs/flutter-apk/app-release.apk
```

Finder එකෙන් open කරන්න:
```bash
open build/app/outputs/flutter-apk/
```

## 📲 Android Phone එකට Install කරන්නේ කොහොමද?

### Step 1: APK එක Phone එකට Transfer කරන්න

#### Option A: AirDrop (Easiest on Mac)
1. `app-release.apk` file එක right-click කරන්න
2. **Share** → **AirDrop**
3. ඔයාගේ Android phone කිට එය්න අමතර (වගේ send කරන්න පුළුවන්)

#### Option B: USB Cable
1. Android phone එක USB එකෙන් plug කරන්න
2. Phone එකේ **File Transfer** mode enable කරන්න
3. Android File Transfer app එක use කරන්න (Mac එකේ)
4. APK එක copy කරලා phone එකේ Downloads folder එකට paste කරන්න

#### Option C: Email/WhatsApp
1. APK file එක email කරන්න or WhatsApp කරන්න
2. Phone එකෙන් download කරගන්න

#### Option D: Google Drive/Dropbox
1. APK file එක upload කරන්න
2. Phone එකෙන් download කරගන්න

### Step 2: Phone එකේ Install කරන්න

1. **Enable Unknown Sources:**
   - Settings → Security (හෝ Apps)
   - "Install unknown apps" හෝ "Unknown sources" enable කරන්න
   - Chrome/Files/Downloads app එකට permission දෙන්න

2. **Install APK:**
   - Phone එකේ Files app එක open කරන්න
   - Downloads folder එකට යන්න
   - `app-release.apk` file එක tap කරන්න
   - **Install** button එක click කරන්න
   - **Open** click කරලා app එක run කරන්න

## 🎉 Done!

App එක install වෙලා දැන් test කරන්න පුළුවන්!

---

## 🐛 Problems?

### "App not installed" error:
- Previous version එකක් install කරල තියෙනවනම් uninstall කරන්න
- Phone restart කරලා try කරන්න

### "Parse error":
- APK file එක corrupted වෙලා තියෙන්න පුළුවන්
- Re-download/transfer කරන්න

### "This type of file can harm your device":
- Normal warning එකක්. "OK" හෝ "Install anyway" click කරන්න

---

## 🌐 Alternative: Web Version

APK build කරන්න අමාරු නම්, browser එකේ test කරන්න:

```bash
cd /Users/hmjay/Desktop/sslanka
flutter run -d chrome
```

මේක instant run වෙනවා! Website එක redirect වෙනවා browser එකේ.

---

## ⏰ Build Time එක අඩු කරන්න නම්:

පළමු build එක slow. දෙවැනි build එක වගේ වැඩියෙන්ම fast:

```bash
# Split APKs (smaller, faster builds for testing)
flutter build apk --split-per-abi --release
```

මේකෙන් 3 APK හදනවා (arm64, armeabi, x86_64). ඔයාගේ phone එකට fit වෙන එක install කරන්න.

---

**Questions?** Check [README.md](README.md) or [SETUP_GUIDE.md](SETUP_GUIDE.md) files!
