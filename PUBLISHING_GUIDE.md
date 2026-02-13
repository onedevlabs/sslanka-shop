# 🚀 App Publishing Guide / App එක Publish කරන Guide

## SS Lanka Shop - iOS සහ Android Publish කරන්නේ කොහොමද?

---

## 📱 Option 1: Android (Google Play Store) - පහසුයි, ඉක්මනෙන්!

### ✅ ඇයි Android පළමුව publish කරන්න ඕන?
- ✨ **ලාභ:** $25 USD (එක වතාවට පමණයි)
- ⚡ **Review time:** 1-7 දවස්
- 🎯 **Sri Lanka market:** Android භාවිතය වැඩියි
- 💰 **සරල:** iOS වලට වඩා පහසුයි

---

## 🎯 Android Publishing - පියවර පියවර

### පියවර 1: Google Play Developer Account එකක් හදාගන්න
```
වියදම: $25 USD (එක වතාවට පමණයි)
කාලය: 5 මිනිත්තු signup, 1-2 දවස් verification
```

**කරන්න ඕන:**
1. https://play.google.com/console/signup වලට යන්න
2. Google account එකක් use කරන්න (or නව එකක් හදාගන්න)
3. $25 USD pay කරන්න (credit card/debit card)
4. Developer account verify වෙන්න බලාගන්න

---

### පියවර 2: App Build කරන්න (AAB Format)

**දැනටමත් APK එකක් ready!** ඔබ දැනටමත් APK එකක් build කරලා තියෙනවා:
```
build/app/outputs/flutter-apk/app-release.apk (45.9MB)
```

**නමුත් Play Store වලට AAB file එක recommended:**

Terminal එකේ run කරන්න:
```bash
cd /Users/hmjay/Desktop/sslanka
flutter build appbundle --release
```

**Output:**
```
build/app/outputs/bundle/release/app-release.aab
```

**AAB එකේ වාසි:**
- File size අඩුයි
- Google optimizations
- Dynamic delivery

---

### පියවර 3: Screenshots ගන්න

**අවශ්‍ය:** අවම වශයෙන් 2 screenshots, උපරිම 8

**Dimensions:** 1080 x 1920 pixels (16:9)

**අදහස්:**
1. Home page with products
2. Product categories
3. Product details
4. Shopping cart
5. Checkout screen
6. Order confirmation

**කොහොමද Screenshots ගන්නේ:**
- Android phone එකක app එක run කරන්න
- Screenshots capture කරන්න
- Computer එකට transfer කරන්න
- 1080x1920 size එකට resize කරන්න

---

### පියවර 4: Feature Graphic හදන්න

**Size:** 1024 x 500 pixels
**Content:** Logo + "Shop Smart, Eat Fresh" tagline
**Tool:** Canva, Photoshop, or online graphic tool

---

### පියවර 5: Play Console එකේ App එක Setup කරන්න

1. **All apps → Create app** click කරන්න

2. **App details fill කරන්න:**
   - App name: **SS Lanka Shop**
   - Default language: **English**
   - App or game: **App**
   - Free or paid: **Free**

3. **Store listing:**
   - Short description: Copy from `PLAY_STORE_INFO.md`
   - Full description: Copy from `PLAY_STORE_INFO.md`
   - Upload app icon (512x512) ✅ දැනටමත් තියෙනවා
   - Upload feature graphic (1024x500)
   - Upload screenshots (2-8)
   
4. **App details:**
   - Category: **Shopping**
   - Contact email: ඔබගේ email
   - Phone: +81 80-6902-0690
   - Website: https://sslankaonlineshop.com/

5. **Privacy policy:**
   - URL: https://sslankaonlineshop.com/privacy-policy
   - (⚠️ මෙම page එක website එකේ create කරන්න ඕන)

---

### පියවර 6: Content Rating

**Questionnaire fill කරන්න:**
- Violence: No
- Sexual content: No
- Bad language: No
- Controlled substances: No
- Gambling: No

**Rating:** Everyone (කාටහරි suitable)

---

### පියවර 7: Pricing & Distribution

- **Countries:** Sri Lanka, India, Japan, USA (or Worldwide)
- **Price:** Free
- **Contains ads:** No
- **In-app purchases:** No

---

### පියවර 8: Upload AAB & Submit

1. **Production** track select කරන්න
2. **Create new release**
3. AAB file upload කරන්න:
   ```
   build/app/outputs/bundle/release/app-release.aab
   ```
4. **Release notes** write කරන්න:
   ```
   🎉 Welcome to SS Lanka Shop!
   
   Initial release featuring:
   • Browse thousands of products
   • Easy and secure shopping
   • Fast delivery across Sri Lanka
   • Real-time order tracking
   • Customer support via hotline
   ```

5. **Review → Rollout** click කරන්න

6. **Submit for review**

---

### පියවර 9: බලාගෙන ඉන්න

- **Review time:** 1-7 දවස්
- **Email එකක්** එනවා approval/rejection ගැන
- **Approved** නම්: Live on Play Store! 🎉
- **Rejected** නම්: Issues fix කරලා resubmit කරන්න

---

## 📊 Android Summary

| Item | Details |
|------|---------|
| **Cost** | $25 USD (one-time) |
| **Time** | 2-10 days total |
| **Review** | 1-7 days |
| **Market** | Worldwide |
| **Updates** | Free, unlimited |

---

## 🍎 Option 2: iOS (Apple App Store)

### ✅ iOS Publishing Details

**ඇයි iOS?**
- 🌍 **Global reach:** International customers
- 💰 **Higher revenue:** iOS users spend more
- 🇱🇰 **Sri Lanka:** Growing iPhone market
- 🇯🇵 **Japan market:** Your target audience

---

## 🎯 iOS Publishing - පියවර පියවර

### පියවර 1: Apple Developer Account එකක් හදාගන්න

```
වියදම: $99 USD/year (¥12,980)
කාලය: 1-2 දවස්
```

**කරන්න ඕන:**
1. https://developer.apple.com/programs/ වලට යන්න
2. Apple ID use කරන්න (or නව එකක් හදාගන්න)
3. **Enroll** click කරන්න
4. Personal or Company select කරන්න (Personal recommended)
5. $99 USD pay කරන්න
6. Verification email එකක් එනකන් බලාගෙන ඉන්න (1-2 දවස්)

---

### පියවර 2: Xcode Install කරන්න

```
අවශ්‍ය: Mac computer (macOS)
Size: ~15GB
Time: 1-3 hours
```

**App Store එකෙන් install කරන්න:**
1. Mac App Store open කරන්න
2. "Xcode" search කරන්න
3. Download & Install
4. Open Xcode → preferences එක setup කරන්න

---

### පියවර 3: iOS App Build කරන්න

**Terminal එකේ:**
```bash
cd /Users/hmjay/Desktop/sslanka

# Dependencies install කරන්න
cd ios
pod install
cd ..

# iOS app build කරන්න
flutter build ios --release
```

---

### පියවර 4: Xcode එකේ Archive කරන්න

```bash
# Xcode open කරන්න
open ios/Runner.xcworkspace
```

**Xcode වලදී:**

1. **Runner** project select කරන්න (left sidebar)
2. **Signing & Capabilities** tab click කරන්න
3. **Automatically manage signing** ✓ check කරන්න
4. **Team** dropdown → ඔබගේ Apple Developer account select කරන්න
5. **Bundle Identifier:** `com.sslanka.shop` (දැනටමත් set වෙලා)

6. **Top bar වලදී:**
   - Device select කරන්න: **Any iOS Device (arm64)**
   
7. **Product → Archive** click කරන්න
8. Archive process එක complete වෙනකන් බලාගෙන ඉන්න (5-10 min)

---

### පියවර 5: App Store Connect එකට Upload කරන්න

Archive complete වුනාම **Organizer window** එක open වෙනවා:

1. Latest archive එක select කරන්න
2. **Distribute App** click කරන්න
3. **App Store Connect** select කරන්න
4. **Upload** click කරන්න
5. Default options use කරන්න (Next, Next...)
6. **Upload** click කරන්න

**Upload time:** 10-30 minutes  
**Processing time:** තවත් 10-20 minutes App Store Connect එකේ

---

### පියවර 6: App Store Connect එකේ Setup කරන්න

https://appstoreconnect.apple.com වලට යන්න

1. **My Apps → + icon → New App**

2. **App Information:**
   - Name: **SS Lanka Shop**
   - Primary Language: **English**
   - Bundle ID: **com.sslanka.shop**
   - SKU: **sslanka-shop-001** (unique වෙන්න ඕන)
   - User Access: **Full Access**

3. **Pricing & Availability:**
   - Price: **Free**
   - Countries: Sri Lanka, Japan, USA, etc. (or All)

---

### පියවර 7: Store Listing Information

**App Information:**
- Subtitle: "Shop Smart, Eat Fresh"
- Category: Shopping
- Secondary category: Food & Drink

**Description:**  
Copy from `APP_STORE_INFO.md` file එකේ

**Keywords:**
```
online shopping, sri lanka, grocery, e-commerce, shopping, sslanka, delivery, fresh food, household, shop
```

**Support URL:** https://sslankaonlineshop.com/  
**Marketing URL:** https://sslankaonlineshop.com/  
**Privacy Policy:** https://sslankaonlineshop.com/privacy-policy

---

### පියවර 8: Screenshots Upload කරන්න

**iOS Simulator use කරන්න or Real iPhone:**

**Required sizes:**
- iPhone 6.7" (Pro Max): 1290 x 2796 pixels
- iPhone 6.5": 1242 x 2688 pixels

**Minimum:** 3 screenshots per size  
**Maximum:** 10 screenshots per size

**Tips:**
- iPhone simulator run කරන්න
- Command+S press කරන්න (screenshot capture)
- Desktop එකෙන් Screenshots folder එකට save වෙනවා

---

### පියවර 9: Build Select කරන්න

1. **App Store Connect → TestFlight tab**
2. Processing complete වෙනකන් බලාගෙන ඉන්න
3. Build ready වුනාම, **Version tab → Build** click කරන්න
4. Upload කළ build එක select කරන්න

---

### පියවර 10: Age Rating & Review Info

**Age Rating:**
- Age: 4+
- Content: No objectionable content

**App Review Information:**
- First Name: ඔබේ name
- Last Name: ඔබේ surname
- Phone: +81 80-6902-0690
- Email: ඔබේ email
- Notes: "This is an online shopping app for Sri Lankan products"

---

### පියවර 11: Submit කරන්න!

1. සියලුම fields fill කරලා ඇද්ද check කරන්න
2. **Save** click කරන්න
3. **Submit for Review** button එක active වෙනවා
4. **Submit for Review** click කරන්න
5. Confirm කරන්න

**Review time:** 1-3 දවස්  
**Email එකක්** එනවා approval/rejection ගැන

---

## 📊 iOS Summary

| Item | Details |
|------|---------|
| **Cost** | $99 USD/year |
| **Time** | 3-5 days total |
| **Review** | 1-3 days |
| **Market** | Worldwide |
| **Updates** | Free, included |
| **Requirement** | Mac computer |

---

## 🎯 අවසාන Checklist

### ⚠️ Publish කරන්න කලින්:

#### Technical:
- [ ] App tested on real device (Android/iPhone)
- [ ] No crashes වගේ bugs නැහැ
- [ ] සියලුම features working properly
- [ ] Internet connection errors handled
- [ ] Website loads correctly in app

#### Legal:
- [ ] Privacy policy created (⚠️ **IMPORTANT**)
  ```
  https://sslankaonlineshop.com/privacy-policy
  ```
  මෙම page එක website එකේ create කරන්න:
  - What data collected (කිසිම personal data collect කරන්නේ නැහැ නම් ඒක කියන්න)
  - How data used
  - Third-party services (payment gateways)
  - Contact info

- [ ] Terms & conditions (optional but recommended)
- [ ] Copyright info clear

#### Marketing:
- [ ] App icon ready ✅ (දැනටමත් තියෙනවා)
- [ ] Screenshots captured
- [ ] Feature graphic ready (Android)
- [ ] Description written ✅ (දැනටමත් තියෙනවා)
- [ ] Keywords ready ✅ (දැනටමත් තියෙනවා)

#### Business:
- [ ] Payment info (credit/debit card) ready
- [ ] Support email active
- [ ] Phone number working (+81 80-6902-0690)
- [ ] Website live (https://sslankaonlineshop.com/)

---

## 💡 Recommendations

### 1. Start with Android පළමුව:
- ✅ Cheaper ($25 vs $99)
- ✅ Faster approval
- ✅ Larger Sri Lankan market
- ✅ Easier process

### 2. Then do iOS:
- ✅ Global reach
- ✅ Premium customers
- ✅ Japan market

### 3. Priority දෙන්න:
1. Privacy Policy create කිරීම ⚠️ (MUST!)
2. Screenshots capture කිරීම
3. Feature graphic design කිරීම (Android)
4. Test කිරීම thoroughly

---

## 🚀 Quick Start Commands

### Android (Play Store):
```bash
cd /Users/hmjay/Desktop/sslanka

# Build App Bundle
flutter build appbundle --release

# Output file:
# build/app/outputs/bundle/release/app-release.aab
```

### iOS (App Store):
```bash
cd /Users/hmjay/Desktop/sslanka

# Install dependencies
cd ios && pod install && cd ..

# Build iOS
flutter build ios --release

# Then open Xcode:
open ios/Runner.xcworkspace
```

---

## 📞 Support

**Problems ඇති වුනොත්:**
- Android: https://support.google.com/googleplay/android-developer
- iOS: https://developer.apple.com/support/

**Project issues:**
- README.md බලන්න
- SETUP_GUIDE.md බලන්න
- Terminal එකේ `flutter doctor` run කරන්න

---

## 🎉 Publishing Timeline

### Android:
- Day 1: Account setup, build app, prepare assets
- Day 2: Create app, fill information, upload
- Day 3-9: Review period
- Day 10: **LIVE ON PLAY STORE!** 🎊

### iOS:
- Day 1: Account signup, wait for approval
- Day 2-3: Xcode setup, build app, prepare assets
- Day 4: Upload to App Store Connect, fill information
- Day 5-7: Review period
- Day 8: **LIVE ON APP STORE!** 🎊

---

## ✅ Next Steps - දැන් මොනවද කරන්න ඕන?

1. **කුමන platform එකක් පළමුව?**
   - Android (recommended) → Start පියවර 1
   - iOS → Start පියවර 1
   - Both → Android පළමුව, then iOS

2. **Privacy Policy හදාගන්න** ⚠️ (MUST!)
   - Website එකේ create කරන්න
   - https://sslankaonlineshop.com/privacy-policy

3. **Developer Account හදාගන්න:**
   - Android: $25 USD
   - iOS: $99 USD/year

4. **Assets prepare කරන්න:**
   - Screenshots capture
   - Feature graphic design (Android)

5. **Build & Submit!** 🚀

---

**සුභ පැතුම්! Good luck with your app launch!** 🎉

කිසියම් help එකක් ඕන නම්, මේ guide එක follow කරන්න හෝ කියන්න! 😊
