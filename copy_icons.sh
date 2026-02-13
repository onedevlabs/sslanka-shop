#!/bin/bash

# Copy icons from Icon Kitchen output to project

echo "🎨 Copying icons to SSL Lanka Shop project..."
echo ""

# Clean old vector icons
echo "🧹 Cleaning old temporary icons..."
rm -f /Users/hmjay/Desktop/sslanka/android/app/src/main/res/mipmap-*/ic_launcher_foreground.xml 2>/dev/null

# Copy Android icons
echo "📱 Copying Android icons..."
cp -r /Users/hmjay/Downloads/IconKitchen-Output/android/res/mipmap-* /Users/hmjay/Desktop/sslanka/android/app/src/main/res/

# Copy iOS icons with proper naming
echo "🍎 Copying iOS icons..."
IOS_DEST="/Users/hmjay/Desktop/sslanka/ios/Runner/Assets.xcassets/AppIcon.appiconset"
IOS_SRC="/Users/hmjay/Downloads/IconKitchen-Output/ios"

# Remove old PNG icons
rm -f "$IOS_DEST"/*.png 2>/dev/null

# Copy with correct names
cp "$IOS_SRC/AppIcon-20@2x.png" "$IOS_DEST/Icon-App-20x20@2x.png"
cp "$IOS_SRC/AppIcon-20@3x.png" "$IOS_DEST/Icon-App-20x20@3x.png"
cp "$IOS_SRC/AppIcon-20~ipad.png" "$IOS_DEST/Icon-App-20x20@1x.png"
cp "$IOS_SRC/AppIcon-29.png" "$IOS_DEST/Icon-App-29x29@1x.png"
cp "$IOS_SRC/AppIcon-29@2x.png" "$IOS_DEST/Icon-App-29x29@2x.png"
cp "$IOS_SRC/AppIcon-29@3x.png" "$IOS_DEST/Icon-App-29x29@3x.png"
cp "$IOS_SRC/AppIcon-40~ipad.png" "$IOS_DEST/Icon-App-40x40@1x.png"
cp "$IOS_SRC/AppIcon-40@2x.png" "$IOS_DEST/Icon-App-40x40@2x.png"
cp "$IOS_SRC/AppIcon-40@3x.png" "$IOS_DEST/Icon-App-40x40@3x.png"
cp "$IOS_SRC/AppIcon@2x.png" "$IOS_DEST/Icon-App-60x60@2x.png"
cp "$IOS_SRC/AppIcon@3x.png" "$IOS_DEST/Icon-App-60x60@3x.png"
cp "$IOS_SRC/AppIcon~ipad.png" "$IOS_DEST/Icon-App-76x76@1x.png"
cp "$IOS_SRC/AppIcon@2x~ipad.png" "$IOS_DEST/Icon-App-76x76@2x.png"
cp "$IOS_SRC/AppIcon-83.5@2x~ipad.png" "$IOS_DEST/Icon-App-83.5x83.5@2x.png"
cp "$IOS_SRC/AppIcon~ios-marketing.png" "$IOS_DEST/Icon-App-1024x1024@1x.png"

echo ""
echo "✅ All icons copied successfully!"
echo ""
echo "📱 Android icons:"
ls -1 /Users/hmjay/Desktop/sslanka/android/app/src/main/res/mipmap-hdpi/*.png | head -3
echo "   ... and more in other mipmap folders"
echo ""
echo "🍎 iOS icons:"
ls -1 "$IOS_DEST"/*.png | head -3
echo "   ... and more (total: $(ls -1 "$IOS_DEST"/*.png | wc -l) icons)"
echo ""
echo "🔨 Next step: Rebuild your apps!"
echo ""
echo "   Android APK:"
echo "   export ANDROID_HOME=/usr/local/share/android-commandlinetools"
echo "   export JAVA_HOME=\$(/usr/libexec/java_home -v 21)"
echo "   flutter build apk --release"
echo ""
echo "   iOS (if Xcode installed):"
echo "   flutter build ios --release"
echo ""
