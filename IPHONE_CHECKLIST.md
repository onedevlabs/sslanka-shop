# ✅ iPhone Testing Checklist

## කරන්න ඕන දේවල් / Quick Checklist:

### 📱 iPhone Setup:

- [ ] iPhone එක USB cable එකෙන් Mac එකට plug කරන්න
- [ ] iPhone එක unlock කරන්න  
- [ ] "Trust This Computer?" → **Trust** click කරන්න
- [ ] iPhone passcode එක type කරන්න
- [ ] Settings → Privacy & Security → Developer Mode → **ON**
- [ ] iPhone එක restart කරන්න
- [ ] "Turn On Developer Mode" confirm කරන්න

### 💻 Mac Setup:

- [ ] Terminal open කරන්න
- [ ] Project folder එකට යන්න:
  ```bash
  cd /Users/hmjay/Desktop/sslanka
  ```
- [ ] Check devices:
  ```bash
  flutter devices
  ```
- [ ] iPhone එක list එකේ පේනවද බලන්න

### 🚀 Run App:

ඔයාගේ iPhone එක list එකේ පේනවනම්:

```bash
# Method 1: Simple (Recommended)
flutter run

# Method 2: Specific device
flutter run -d [device-id]

# Method 3: Script කරන්න
./run_on_iphone.sh
```

### 🔧 First Time Run:

පළමු වතාවට app එක run කරන time එකේ:

1. App එක install වෙනවා iPhone එකේ
2. Launch කරන්න try කරනකොට **Error** එකක් එනවා:
   ```
   "Untrusted Enterprise Developer"
   ```
3. iPhone Settings වලට යන්න:
   ```
   Settings → General → VPN & Device Management
   ```
4. ඔයාගේ developer profile එක select කරන්න
5. **Trust "[Your Name]"** click කරන්න
6. දැන් app එක run වෙයි! 🎉

---

## ⚠️ Problems?

### iPhone එක detect වෙන්නේ නැහැ?

1. USB cable එක properly connect වෙලා තියෙනවද?
2. iPhone එක unlock කරලා තියෙනවද?
3. "Trust" කරලා තියෙනවද?
4. Developer Mode enable කරලා තියෙනවද?
5. iPhone එක unplug කරලා plug කරලා try කරන්න

### "No provisioning profile" error?

**Xcode open කරන්න:**
```bash
open ios/Runner.xcworkspace
```

1. Runner target select කරන්න
2. Signing & Capabilities
3. **Automatically manage signing** ✓
4. Team → ඔයාගේ Apple ID select කරන්න
5. Bundle ID change කරන්න unique එකක්: `com.sslanka.shop.yourname`

### Build failed?

```bash
flutter clean
flutter pub get
cd ios && pod install && cd ..
flutter run
```

---

## 🎯 Commands සාරාංශය:

```bash
# Device list එක බලන්න
flutter devices

# App එක run කරන්න
flutter run

# Reload (code change එකක් කරපු ගමන්)
# Terminal එකේ 'r' press කරන්න

# Hot Restart
# Terminal එකේ 'R' press කරන්න

# Stop app
# Terminal එකේ 'q' press කරන්න

# Build release version
flutter build ios --release

# Clean project
flutter clean

# View logs
flutter logs
```

---

**Full Guide:** [IPHONE_TESTING.md](IPHONE_TESTING.md) file එක කියවන්න! 📖
