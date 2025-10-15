# Assets Management for Books Bazar App

## Overview
This project includes a comprehensive assets management system that automatically generates type-safe asset references.

## Files Structure

### Generated Assets Class
- **Location**: `lib/core/utils/app_assets.dart`
- **Purpose**: Contains type-safe constants for all your assets
- **Auto-generated**: Can be regenerated using the script below

### Asset Generator Script
- **Location**: `scripts/generate_assets.dart`
- **Purpose**: Automatically scans your assets folder and generates the AppAssets class

## How to Use AppAssets

### Import the class:
```dart
import 'package:books_bazar_app/core/utils/app_assets.dart';
```

### Use assets in your widgets:
```dart
// Single image
Image.asset(AppAssets.onBoarding1)

// With properties
Image.asset(
  AppAssets.bestVendors,
  width: 200,
  height: 100,
  fit: BoxFit.cover,
)

// Icons
Icon(
  AppAssets.searchIcon,
  size: 24,
)

// In decorations
Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage(AppAssets.topOfWeek),
      fit: BoxFit.cover,
    ),
  ),
)
```

## Available Assets

### Images (from `assets/images/`)
- `AppAssets.bestVendors`
- `AppAssets.forgetPasswordSuccess`
- `AppAssets.onBoarding1`
- `AppAssets.onBoarding2`
- `AppAssets.onBoarding3`
- `AppAssets.topOfWeek`

### Icons (from `assets/icons_images/`)
- `AppAssets.calendar`
- `AppAssets.cartFillIconBar`
- `AppAssets.emailIcon`
- `AppAssets.grayRateStar`
- `AppAssets.homeFillIconBar`
- `AppAssets.locationFill`
- `AppAssets.locationMark`
- `AppAssets.menuFillIconBar`
- `AppAssets.notificationIcon`
- `AppAssets.passwordOutlineIcon`
- `AppAssets.paymentIcon`
- `AppAssets.paymentMethod1`
- `AppAssets.paymentMethod2`
- `AppAssets.phoneOutlineIcon`
- `AppAssets.phoneIcon`
- `AppAssets.profileFillIconBar`
- `AppAssets.searchGaryIcon`
- `AppAssets.searchIcon`

### Asset Collections
- `AppAssets.allImages` - List of all image assets
- `AppAssets.allIcons` - List of all icon assets
- `AppAssets.allAssets` - List of all assets

## Regenerating Assets

### Automatic Regeneration
When you add new assets to your `assets/` folder, run:

```powershell
# From project root
dart run scripts/generate_assets.dart
```

This will automatically:
1. Scan all files in `assets/images/` and `assets/icons_images/`
2. Generate camelCase constant names
3. Create the new `AppAssets` class
4. Organize assets into logical groups

### Manual Addition
You can also manually add new assets to the `AppAssets` class following the same pattern.

## Benefits

1. **Type Safety**: No more string typos in asset paths
2. **IDE Support**: Auto-completion and refactoring support
3. **Centralized Management**: All assets in one place
4. **Easy Maintenance**: Automatic generation when assets change
5. **Runtime Safety**: Compile-time checking of asset references

## Example Usage
See `lib/examples/assets_usage_example.dart` for a complete example of how to use the AppAssets class in your widgets.

## Adding New Assets

1. Add your new image/icon files to the appropriate folder:
   - Images: `assets/images/`
   - Icons: `assets/icons_images/`

2. Update your `pubspec.yaml` if needed (already configured)

3. Regenerate the assets class:
   ```powershell
   dart run scripts/generate_assets.dart
   ```

4. Use the new assets in your code with full IDE support!

## Notes
- All asset names are automatically converted to camelCase
- Special characters and spaces are handled automatically
- The generator supports common image formats: PNG, JPG, JPEG, GIF, WebP, SVG