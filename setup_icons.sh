#!/bin/bash

# SSL Lanka Shop - Icon Setup Script

echo "🎨 App Icon Setup for SSL Lanka Shop"
echo ""
echo "This script will help you add custom icons to your app."
echo ""

# Check if icon exists
if [ -f "assets/images/app_icon.png" ]; then
    echo "✅ Icon file found: assets/images/app_icon.png"
    echo ""
    echo "📱 Generating icons for Android & iOS..."
    echo ""
    
    flutter pub get
    flutter pub run flutter_launcher_icons
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ SUCCESS! Icons generated!"
        echo ""
        echo "📱 Your app icons have been updated:"
        echo "   ✓ Android icons: android/app/src/main/res/mipmap-*/"
        echo "   ✓ iOS icons: ios/Runner/Assets.xcassets/AppIcon.appiconset/"
        echo ""
        echo "🔄 Next Steps:"
        echo "   1. Rebuild your app:"
        echo "      - Android: flutter build apk --release"
        echo "      - iOS: flutter build ios --release"
        echo ""
        echo "   2. Install on device to see new icon!"
        echo ""
    else
        echo ""
        echo "❌ Icon generation failed. Check errors above."
    fi
else
    echo "⚠️  Icon file NOT found!"
    echo ""
    echo "📋 Follow these steps:"
    echo ""
    echo "1️⃣  Create or get your app icon:"
    echo "    - Must be 1024x1024 pixels"
    echo "    - PNG format"
    echo "    - Square shape"
    echo ""
    echo "2️⃣  Save it as:"
    echo "    assets/images/app_icon.png"
    echo ""
    echo "3️⃣  Then run this script again:"
    echo "    ./setup_icons.sh"
    echo ""
    echo "💡 Or use online tools:"
    echo "    https://www.appicon.co/ - Upload logo, download icons"
    echo "    https://icon.kitchen/ - Google's icon generator"
    echo ""
    echo "📖 Full guide: See ICON_GUIDE.md"
    echo ""
fi
