# 🍎 Xcode Installation & Setup Guide

## Xcode Install කළ විට / After Installing Xcode

### Step 1: Xcode Command Line Tools Setup
```bash
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
```
Password එක අහනවා, ඔයාගේ Mac password එක type කරන්න (characters පේන්නේ නැහැ, ඒක normal).

### Step 2: Accept Xcode License
```bash
sudo xcodebuild -license accept
```

### Step 3: Install CocoaPods (iOS Dependencies)
```bash
sudo gem install cocoapods
```

### Step 4: Setup iOS Dependencies
```bash
cd /Users/hmjay/Desktop/sslanka/ios
pod install
cd ..
```

### Step 5: Verify Setup
```bash
flutter doctor
```

Everything green නම් ready! ✅

## Xcode Download Links:

### Option 1: Mac App Store (Recommended)
- Open App Store → Search "Xcode" → Install
- Download Size: ~15-20 GB
- Time: 2-4 hours (internet speed එකට අනුව)

### Option 2: Apple Developer (Direct Download)
- Website: https://developer.apple.com/xcode/
- Need Apple ID
- Download .xip file → Extract → Move to Applications folder

## Requirements:
- macOS 12.0 or later
- 20+ GB free space
- Apple ID

## After Installation Commands:

**Copy and run these one by one after Xcode is installed:**

```bash
# 1. Set Xcode path
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer

# 2. Run first launch
sudo xcodebuild -runFirstLaunch

# 3. Accept license
sudo xcodebuild -license accept

# 4. Install CocoaPods
sudo gem install cocoapods

# 5. Install iOS dependencies
cd /Users/hmjay/Desktop/sslanka/ios && pod install && cd ..

# 6. Check everything
flutter doctor
```

## Troubleshooting:

### If "xcode-select" error:
```bash
sudo xcode-select --reset
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
```

### If CocoaPods install fails:
```bash
# Use brew instead
brew install cocoapods
```

### If pod install fails:
```bash
cd ios
pod deintegrate
pod install --repo-update
cd ..
```

## Testing iOS App:

After everything is setup:

```bash
# Open iOS simulator
open -a Simulator

# Run app in simulator
flutter run
```

## Building for Real Device:

1. Connect iPhone/iPad via USB
2. Open in Xcode:
   ```bash
   open ios/Runner.xcworkspace
   ```
3. Select your device in Xcode
4. Select your Team (Apple Developer account needed)
5. Run from Xcode OR:
   ```bash
   flutter run
   ```

---

**Note:** iOS app development and App Store publishing needs:
- Apple Developer Account ($99/year)
- Real Mac computer (cannot be done on Windows/Linux)

Good luck! 🚀
