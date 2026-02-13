# 📱 iPhone Test කරන්නේ කොහොමද / How to Test on iPhone

## iPhone 14 Pro එකේ App එක Run කරන්න

### Step 1: iPhone එක Mac එකට Connect කරන්න

1. **USB Cable එකෙන් iPhone එක plug කරන්න** (Lightning to USB-C/USB-A)
2. **iPhone එකේ "Trust This Computer" කියලා message එකක් එයි:**
   - "Trust" click කරන්න
   - iPhone passcode එක enter කරන්න
3. **Mac එකේත් "Trust" කරන්න ඕන වෙන්න පුළුවන්**

### Step 2: iPhone එකේ Developer Mode Enable කරන්න

iPhone එකේ iOS 16+ තියෙනවනම් Developer Mode enable කරන්න ඕන:

1. **Settings** → **Privacy & Security** → **Developer Mode**
2. Toggle එක **ON** කරන්න
3. iPhone එක **Restart** කරන්න
4. Restart වුනාම popup එක "Turn On" කරන්න

### Step 3: Xcode වලින් Trust කරන්න

```bash
# Xcode open කරන්න
open ios/Runner.xcworkspace
```

Xcode එකේ:
1. **Window** → **Devices and Simulators** (⇧⌘2)
2. ඔයාගේ iPhone එක list එකේ පේනවද බලන්න
3. Yellow warning තියෙනවනම් "Register" / "Trust" click කරන්න

### Step 4: Connected Devices Check කරන්න

```bash
flutter devices
```

මේ විදිහට පේන්න ඕන:
```
iPhone 14 Pro (mobile) • [device-id] • ios • iOS 17.x
```

### Step 5: App එක Run කරන්න

#### Method 1: Command Line (Easy)

```bash
# iPhone එකේ run කරන්න
flutter run
```

Flutter automatically ඔයාගේ iPhone එක detect කරලා app එක install කරල run කරයි.

#### Method 2: Xcode (Advanced)

```bash
# Xcode open කරන්න
open ios/Runner.xcworkspace
```

Xcode එකේ:
1. Top bar එකේ device selector click කරන්න
2. ඔයාගේ iPhone 14 Pro select කරන්න
3. **Product** → **Run** (⌘R) click කරන්න

### Troubleshooting

#### 1. iPhone එක Detect වෙන්නේ නැහැ:

```bash
# Check connected devices
system_profiler SPUSBDataType | grep iPhone

# Or check with instruments
instruments -s devices
```

iPhone එක list එකේ නැත්නම්:
- USB cable එක වෙනස් කරලා try කරන්න
- Different USB port එකක try කරන්න
- iPhone එක unlock කරලා try කරන්න
- Mac එක restart කරන්න

#### 2. "Developer Mode Required" Error:

iPhone Settings වලට යන්න:
- **Settings** → **Privacy & Security** → **Developer Mode** → **ON**
- iPhone restart කරන්න

#### 3. "Untrusted Developer" Error:

iPhone එකේ:
- **Settings** → **General** → **VPN & Device Management**
- ඔයාගේ Apple ID/Developer profile එක select කරන්න
- **Trust [Your Name]** click කරන්න

#### 4. "Code Signing Error":

Xcode වල:
1. Runner target select කරන්න
2. **Signing & Capabilities** tab එක
3. **Automatically manage signing** check කරන්න
4. **Team** dropdown එකෙන් ඔයාගේ Apple ID select කරන්න
5. **Bundle Identifier** unique එකක් දාන්න: `com.sslanka.shop.yourname`

#### 5. "Failed to Install App":

```bash
# Clean and rebuild
flutter clean
flutter pub get
cd ios
rm -rf Pods Podfile.lock
pod install
cd ..
flutter run
```

### First Time Run වෙනකොට:

පළමු වතාවට run කරන time එකේ:
1. App එක iPhone එකේ install වෙනවා
2. Launch කරන්න try කරනකොට "Untrusted Developer" error එකක් එනවා
3. **Settings** → **General** → **VPN & Device Management** → **Trust** කරන්න
4. දැන් app එක open වෙයි! 🎉

### Hot Reload Use කරන්න:

App එක run වෙද්දී:
- Code එකක් change කරන්න
- **r** press කරන්න terminal එකේ (reload)
- **R** press කරන්න (hot restart)
- iPhone එකේ instant update වෙනවා! ⚡

### Wireless Debugging (iOS 17+):

iPhone එක USB එකෙන් disconnect කරලාත් test කරන්න පුළුවන්:

**Xcode වල:**
1. **Window** → **Devices and Simulators**
2. iPhone select කරන්න
3. **Connect via network** checkbox enable කරන්න
4. USB cable එක unplug කරන්න
5. දැන් wireless debugging work කරනවා! 📡

දැන් terminal එකේන්:
```bash
flutter run
# iPhone එක WiFi එකෙන් detect වෙයි
```

---

## Quick Commands:

```bash
# Check devices
flutter devices

# Run on iPhone
flutter run

# Build for iPhone (release)
flutter build ios --release

# Clean and rebuild
flutter clean && flutter pub get && flutter run

# Open in Xcode
open ios/Runner.xcworkspace

# Check iOS logs
flutter logs
```

## Requirements:

✅ Mac computer  
✅ iPhone with iOS 12.0 or higher  
✅ USB cable  
✅ Same WiFi network (for wireless debugging)  
✅ Free Apple ID (for development)  
💰 Apple Developer Account ($99/year) - App Store release එකට විතරක්

---

**Note:** Development/testing වලට free Apple ID එකක් ඇති. App Store එකට publish කරන්නම නම් $99/year Apple Developer Program එකට join වෙන්න ඕන.

Happy Testing! 🎉📱
