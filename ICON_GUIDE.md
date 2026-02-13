# 🎨 App Icons Add කරන්නේ කොහොමද / How to Add App Icons

## 📱 Android & iOS App Icons

### Method 1: Online Icon Generator (Easiest) ⭐

#### Step 1: Create/Get Your Logo
- 1024x1024 PNG image එකක් හදාගන්න
- Square shape විතරයි (පළල සහ උස සමානයි)
- Transparent background හෝ solid background
- Simple, clear design (small size එකේ පේන විදිහට)

#### Step 2: Generate Icons
එක එක්කෙනගේ වෙන වෙන සයිස් තියෙන icons auto-generate කරන්න:

**🌐 Recommended Tools:**

1. **App Icon Generator** (Best for Flutter)
   - Website: https://www.appicon.co/
   - Upload your 1024x1024 image
   - Download Android & iOS icons
   - Extract කරලා replace කරන්න

2. **Icon Kitchen** (Google's Tool)
   - Website: https://icon.kitchen/
   - Free, easy to use
   - Supports adaptive icons

3. **Flutter Launcher Icons** (Command Line)
   ```bash
   flutter pub add flutter_launcher_icons --dev
   ```

#### Step 3: Replace Icons

**For Android:**
```
android/app/src/main/res/
├── mipmap-hdpi/ic_launcher.png (72x72)
├── mipmap-mdpi/ic_launcher.png (48x48)
├── mipmap-xhdpi/ic_launcher.png (96x96)
├── mipmap-xxhdpi/ic_launcher.png (144x144)
└── mipmap-xxxhdpi/ic_launcher.png (192x192)
```

**For iOS:**
```
ios/Runner/Assets.xcassets/AppIcon.appiconset/
├── Icon-App-20x20@1x.png (20x20)
├── Icon-App-20x20@2x.png (40x40)
├── Icon-App-20x20@3x.png (60x60)
├── Icon-App-29x29@1x.png (29x29)
├── Icon-App-29x29@2x.png (58x58)
├── Icon-App-29x29@3x.png (87x87)
├── Icon-App-40x40@1x.png (40x40)
├── Icon-App-40x40@2x.png (80x80)
├── Icon-App-40x40@3x.png (120x120)
├── Icon-App-60x60@2x.png (120x120)
├── Icon-App-60x60@3x.png (180x180)
├── Icon-App-76x76@1x.png (76x76)
├── Icon-App-76x76@2x.png (152x152)
├── Icon-App-83.5x83.5@2x.png (167x167)
└── Icon-App-1024x1024@1x.png (1024x1024)
```

---

## Method 2: Automated (Using Package) ⚡

### Step 1: Add Package
```bash
cd /Users/hmjay/Desktop/sslanka
flutter pub add flutter_launcher_icons --dev
```

### Step 2: Create Config
Copy your 1024x1024 logo to: `assets/images/app_icon.png`

Then add to `pubspec.yaml`:
```yaml
flutter_launcher_icons:
  android: true
  ios: true
  image_path: "assets/images/app_icon.png"
  adaptive_icon_background: "#2196F3"  # Your color
  adaptive_icon_foreground: "assets/images/app_icon.png"
```

### Step 3: Generate Icons
```bash
flutter pub get
flutter pub run flutter_launcher_icons
```

Done! Icons automatically generated! 🎉

---

## Method 3: Manual (Detailed) 🔧

### For Android:

1. **Create icon files** in these sizes:
   - mdpi: 48x48
   - hdpi: 72x72
   - xhdpi: 96x96
   - xxhdpi: 144x144
   - xxxhdpi: 192x192

2. **Name them:** `ic_launcher.png`

3. **Place in folders:**
   ```
   android/app/src/main/res/mipmap-mdpi/ic_launcher.png
   android/app/src/main/res/mipmap-hdpi/ic_launcher.png
   android/app/src/main/res/mipmap-xhdpi/ic_launcher.png
   android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png
   android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
   ```

### For iOS:

1. **In Xcode:**
   ```bash
   open ios/Runner.xcworkspace
   ```

2. **Navigate to:**
   - Runner → Assets.xcassets → AppIcon

3. **Drag & drop** your icon images to the slots
   - Or manually add PNG files to the folder

---

## 🎨 Icon Design Tips:

### ✅ Good Practices:
- Simple, recognizable design
- Works at small sizes (16x16)
- Consistent with brand
- No text (hard to read)
- Bold colors
- Square shape

### ❌ Avoid:
- Too detailed
- Small text
- Thin lines
- Too many colors
- Photos (use illustrations)

---

## 📦 Quick Icon Ideas:

### For SSL Lanka Online Shop:
- Shopping bag icon 🛍️
- "SSL" letters
- Sri Lankan flag colors
- Shopping cart
- Store front
- Package box

---

## 🔥 Quick Start Commands:

```bash
# Method 1: Use online tool
# Go to: https://www.appicon.co/
# Upload your logo → Download → Replace files

# Method 2: Use flutter package
cd /Users/hmjay/Desktop/sslanka
flutter pub add flutter_launcher_icons --dev

# Add icon to: assets/images/app_icon.png

# Edit pubspec.yaml (add flutter_launcher_icons config)

# Then run:
flutter pub get
flutter pub run flutter_launcher_icons

# Rebuild apps
flutter build apk --release          # Android
flutter build ios --release          # iOS
```

---

## 📱 After Adding Icons:

### Test Android:
```bash
flutter build apk --release
# Install on phone and check home screen
```

### Test iOS:
```bash
flutter build ios --release
# Or run in simulator
open -a Simulator
flutter run
```

---

## 🎯 Recommended Workflow:

1. **Design logo** in 1024x1024 (use Canva, Figma, Photoshop)
2. **Upload to** https://www.appicon.co/
3. **Download** icon packs
4. **Extract** and copy to project
5. **Rebuild** apps
6. **Test** on devices

---

## 💡 Free Logo Tools:

- **Canva** - https://www.canva.com/ (Easy templates)
- **Figma** - https://www.figma.com/ (Professional)
- **Hatchful** - https://www.shopify.com/tools/logo-maker (AI logo)
- **Looka** - https://looka.com/ (AI logo maker)

---

## 🆘 Need Help?

If you have a logo image:
1. Send me the path/location
2. I'll help configure it

If you need to create a logo:
1. Use Canva (easiest)
2. Create 1024x1024 design
3. Download as PNG
4. Follow Method 2 above

---

**Current Status:** Vector icons දාලා තියෙනවා (temporary). 
**Next:** Custom PNG icons add කරන්න ඕන proper branding වලට.
