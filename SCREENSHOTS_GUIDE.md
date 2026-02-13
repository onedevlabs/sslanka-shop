# Screenshots and Graphics Guide

## Overview
Both App Store and Play Store require visual assets. This guide helps you prepare all required images.

---

## 📱 Required Screenshots

### Google Play Store Requirements

**Phone Screenshots (Required):**
- **Dimensions:** 1080 x 1920 pixels (or higher)
- **Format:** PNG or JPEG
- **Minimum:** 2 screenshots
- **Maximum:** 8 screenshots
- **Aspect Ratio:** 16:9 or 9:16

**Tablet Screenshots (Optional but Recommended):**
- **7-inch:** 1024 x 600 pixels
- **10-inch:** 1920 x 1200 pixels

### Apple App Store Requirements

**iPhone Screenshots (Required):**

**6.7" Display** (iPhone 14 Pro Max, 15 Pro Max - Required):
- **Dimensions:** 1290 x 2796 pixels
- **Format:** PNG or JPEG
- **Minimum:** 3 screenshots
- **Maximum:** 10 screenshots

**5.5" Display** (iPhone 8 Plus - Optional):
- **Dimensions:** 1242 x 2208 pixels

**iPad Screenshots (If supporting iPad):**
- **12.9" iPad Pro:** 2048 x 2732 pixels

---

## 📸 How to Capture Screenshots

### Method 1: From Your Android Phone (Easiest)

1. **Install the APK on your phone:**
   ```
   APK Location: /Users/hmjay/Desktop/sslanka/build/app/outputs/flutter-apk/app-release.apk
   ```

2. **Open the app and navigate to each screen**

3. **Take screenshots:**
   - Android: Press Power + Volume Down
   - Screenshots saved to Gallery

4. **Transfer screenshots to Mac:**
   - USB cable → Open in Finder
   - AirDrop
   - Google Photos
   - Email

5. **Resize if needed:**
   - Play Store accepts various sizes
   - App Store needs exact dimensions

### Method 2: Using Flutter DevTools

```bash
# Run app in debug mode
cd /Users/hmjay/Desktop/sslanka
flutter run

# Take screenshots from the app
# Screenshots saved automatically
```

### Method 3: Using Android Emulator

```bash
# Start emulator
flutter emulators --launch <emulator-id>

# Run app
flutter run

# Take screenshot: Cmd + S (Mac)
# Or use emulator's camera button
```

---

## 🎨 Required Screenshots (Suggested Screens)

### Must-Have Screenshots (All Stores):

1. **Home Page / Splash Screen**
   - Shows: App logo, brand identity
   - Purpose: First impression

2. **Homepage with Products**
   - Shows: Main banner, product categories, featured products
   - Purpose: Show product variety

3. **Product Categories**
   - Shows: Different shopping categories (groceries, rice, etc.)
   - Purpose: Demonstrate organization

4. **Product Listing**
   - Shows: Products in a category with prices
   - Purpose: Show browsing experience

5. **Product Details**
   - Shows: Single product with description, price, add to cart
   - Purpose: Detail view functionality

### Optional Screenshots (Recommended):

6. **Shopping Cart**
   - Shows: Selected items, quantities, total price
   - Purpose: Show purchase process

7. **Checkout / My Account**
   - Shows: User profile or order summary
   - Purpose: Demonstrate user features

8. **Order Confirmation**
   - Shows: Successful order placement
   - Purpose: Complete user journey

---

## 🖼️ Feature Graphics

### Google Play Store Feature Graphic

**Requirements:**
- **Dimensions:** 1024 x 500 pixels
- **Format:** PNG or JPEG
- **Max file size:** 1MB
- **Note:** Required for Play Store listing

**Content Ideas:**
- App logo + tagline: "Shop Smart, Eat Fresh!"
- Product images
- Brand colors
- Call to action

### Create Feature Graphic:

**Option 1: Using Canva (Free)**
```bash
open "https://www.canva.com/"
```
1. Click "Custom size" → 1024 x 500 pixels
2. Add SS Lanka logo
3. Add text: "Shop Smart, Eat Fresh!"
4. Add product images
5. Download as PNG

**Option 2: Using your existing banner**
- Crop the website banner from screenshot
- Resize to 1024 x 500
- Ensure logo and text are clear

---

## 📐 App Icons (Already Done ✅)

### Google Play Store Icon
- ✅ **512 x 512 pixels** - Ready from Icon Kitchen
- Located: `/Users/hmjay/Downloads/IconKitchen-Output/android/`

### Apple App Store Icon
- ✅ **1024 x 1024 pixels** - Ready from Icon Kitchen
- Located: `/Users/hmjay/Downloads/IconKitchen-Output/ios/`

---

## 🎬 Promotional Video (Optional)

### Video Specifications

**Google Play:**
- YouTube link required
- Length: 15 seconds - 2 minutes
- Shows app features

**Apple App Store:**
- App Preview video
- 15-30 seconds
- Must show actual app footage

### Create Simple Video:

1. **Screen recording on phone:**
   - Android: Use built-in screen recorder
   - Settings → Advanced Features → Screen Recorder

2. **What to show:**
   - Open app
   - Browse products
   - Add to cart
   - Show checkout
   - (15-30 seconds total)

3. **Upload to YouTube:**
   - Set as "Unlisted"
   - Copy link for Play Store

4. **Edit (optional):**
   - Add background music
   - Add text overlays
   - Trim to best 15-30 seconds

---

## 📋 Screenshot Checklist

### Before Taking Screenshots:

- [ ] App installed and working
- [ ] Good lighting (if photographing screen)
- [ ] Remove personal information
- [ ] Test all features work
- [ ] Clean app cache for fresh look
- [ ] Full battery icon (looks better)
- [ ] Good network signal
- [ ] Time set to standard (10:09 or similar)

### Screenshots to Capture:

**Essential (Minimum 3 for App Store, 2 for Play Store):**
- [ ] Splash screen with logo
- [ ] Homepage with products
- [ ] Product categories
- [ ] Product detail page

**Recommended (5-8 total):**
- [ ] Product listing
- [ ] Shopping cart
- [ ] Checkout screen
- [ ] User account/profile
- [ ] Order confirmation

**Optional (8-10 for complete story):**
- [ ] Search functionality
- [ ] Special offers/promotions
- [ ] Delivery information
- [ ] Customer support screen

---

## 🔧 Tools for Editing Screenshots

### Resize Images:

**Online Tool:**
```bash
open "https://www.iloveimg.com/resize-image"
```

**Mac Preview:**
1. Open image in Preview
2. Tools → Adjust Size
3. Enter required dimensions
4. Save

**Command Line (Mac):**
```bash
# Install ImageMagick
brew install imagemagick

# Resize image
convert input.png -resize 1290x2796 output.png

# Batch resize all screenshots
for file in *.png; do
  convert "$file" -resize 1080x1920 "resized_$file"
done
```

### Add Device Frame (Optional):

**Online Tool:**
```bash
open "https://app-mockup.com/"
```
- Upload screenshot
- Select device (iPhone, Android)
- Download with device frame

### Remove Sensitive Info:

**If screenshots contain personal data:**
- Blur names/emails/addresses
- Use generic test data
- Remove phone numbers

---

## 📊 Image Quality Tips

### Do's:
✅ Use actual app screenshots
✅ Show real functionality
✅ High resolution images
✅ Consistent lighting
✅ Clean, uncluttered screens
✅ Show key features
✅ Proper aspect ratios

### Don'ts:
❌ Blurry or pixelated images
❌ Wrong dimensions
❌ Fake/mockup screenshots (not real app)
❌ Copyrighted images without permission
❌ Misleading content
❌ Personal information visible
❌ Inconsistent style

---

## 📱 Quick Screenshot Workflow

### For Play Store (Faster):
1. Install APK on Android phone ✓ Ready
2. Open app and navigate through main screens
3. Take 3-5 screenshots (Power + Volume Down)
4. Transfer to Mac
5. Upload to Play Store Console

### For App Store (After Xcode ready):
1. Build iOS app with Xcode
2. Run on iPhone or Simulator
3. Navigate through screens
4. Take screenshots (Cmd + S in Simulator)
5. Resize to 1290 x 2796 if needed
6. Upload to App Store Connect

---

## 📦 Organizing Your Assets

```
screenshots/
├── android/
│   ├── phone/
│   │   ├── 01-splash.png (1080x1920)
│   │   ├── 02-homepage.png
│   │   ├── 03-categories.png
│   │   ├── 04-products.png
│   │   └── 05-details.png
│   └── feature-graphic.png (1024x500)
│
├── ios/
│   ├── 6.7-inch/
│   │   ├── 01-splash.png (1290x2796)
│   │   ├── 02-homepage.png
│   │   ├── 03-categories.png
│   │   ├── 04-products.png
│   │   └── 05-details.png
│   └── app-icon-1024.png
│
└── video/
    └── app-demo.mp4
```

Create folders:
```bash
cd /Users/hmjay/Desktop/sslanka
mkdir -p screenshots/{android/phone,ios/6.7-inch,video}
```

---

## 🎯 Next Steps

1. **Install APK on your Android phone first** (easiest way)
2. **Capture 5-8 screenshots** of different screens
3. **Transfer screenshots to Mac**
4. **Create Feature Graphic** (1024x500) using Canva or crop from banner
5. **Store organized** in screenshots folder
6. **Ready to upload** to Play Store or App Store!

---

## 💡 Pro Tips

- **Consistency:** Use same phone orientation (portrait) for all screenshots
- **Story:** Order screenshots to tell a user journey (open app → browse → buy)
- **Quality:** Use PNG for best quality, JPEG for smaller file size
- **Localization:** Can add text overlays in Sinhala/English for marketing
- **Testing:** Show screenshots to friends/family - do they understand the app's purpose?

---

## 🚀 Ready to Start?

**Easiest path:**
1. Transfer the APK (45.9MB) to your Android phone NOW
2. Install and open the app
3. Take 5 screenshots (different pages)
4. Send back to Mac via AirDrop/USB
5. You'll have your screenshots ready in 15 minutes!

**The APK location:**
```
/Users/hmjay/Desktop/sslanka/build/app/outputs/flutter-apk/app-release.apk
```

Good luck creating your store assets! 📸
