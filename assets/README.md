# SSL Lanka Shop App - Assets Directory

This directory contains app assets like images, icons, and other resources.

## Directory Structure

- `images/` - App images and logos
- `icons/` - App icons for different platforms

## Adding Assets

1. Place your assets in the appropriate subdirectory
2. Update `pubspec.yaml` to include the assets:

```yaml
flutter:
  assets:
    - assets/images/logo.png
    - assets/icons/
```

3. Use in code:
```dart
Image.asset('assets/images/logo.png')
```

## App Icon Generation

To generate app icons for all platforms:

1. Create a 1024x1024 PNG icon
2. Use [https://appicon.co/](https://appicon.co/) or similar tool
3. Replace the generated icons in:
   - `android/app/src/main/res/mipmap-*/`
   - `ios/Runner/Assets.xcassets/AppIcon.appiconset/`
