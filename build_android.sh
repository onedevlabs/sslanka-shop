#!/bin/bash

# SSL Lanka Shop - Android APK Build Script

echo "🔧 Setting up environment..."

export ANDROID_HOME=/usr/local/share/android-commandlinetools
export JAVA_HOME=$(/usr/libexec/java_home -v 21)
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin

echo "🧹 Cleaning project..."
flutter clean

echo "📦 Getting dependencies..."
flutter pub get

echo "🏗️  Building APK (this will take 5-10 minutes)..."
echo "⏰ Please wait, do not cancel..."

flutter build apk --release

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! APK built successfully!"
    echo ""
    echo "📱 APK Location:"
    echo "   build/app/outputs/flutter-apk/app-release.apk"
    echo ""
    echo "📲 Transfer to your Android phone:"
    echo "   1. Connect phone via USB"
    echo "   2. Copy APK to phone"
    echo "   3. Install: Settings → Security → Unknown Sources → Enable"
    echo "   4. Open APK file and install"
    echo ""
    echo "🎉 Done!"
    
    # Open folder
    open build/app/outputs/flutter-apk/
else
    echo ""
    echo "❌ Build failed. Check errors above."
    echo ""
fi
