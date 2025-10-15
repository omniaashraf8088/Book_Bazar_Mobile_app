import 'dart:io';

/// This script generates the AppAssets class with all asset paths
/// Run this script whenever you add new assets to automatically update the AppAssets class
void main() {
  generateAppAssets();
}

void generateAppAssets() {
  final assetsDir = Directory('assets');
  if (!assetsDir.existsSync()) {
    print('Assets directory not found!');
    return;
  }

  final buffer = StringBuffer();
  buffer.writeln('class AppAssets {');
  buffer.writeln('  AppAssets._();');
  buffer.writeln();

  final allAssets = <String>[];
  final images = <String>[];
  final icons = <String>[];

  // Process images
  final imagesDir = Directory('assets/images');
  if (imagesDir.existsSync()) {
    buffer.writeln('  // Images');
    final imageFiles =
        imagesDir
            .listSync()
            .where((file) => file is File && _isImageFile(file.path))
            .map((file) => file.path.replaceAll('\\', '/'))
            .toList()
          ..sort();

    for (final imagePath in imageFiles) {
      final constName = _pathToConstName(imagePath);
      final assetPath = imagePath.replaceAll('\\', '/');
      buffer.writeln('  static const String $constName = \'$assetPath\';');
      images.add(constName);
      allAssets.add(constName);
    }
    buffer.writeln();
  }

  // Process icons
  final iconsDir = Directory('assets/icons_images');
  if (iconsDir.existsSync()) {
    buffer.writeln('  // Icons');
    final iconFiles =
        iconsDir
            .listSync()
            .where((file) => file is File && _isImageFile(file.path))
            .map((file) => file.path.replaceAll('\\', '/'))
            .toList()
          ..sort();

    for (final iconPath in iconFiles) {
      final constName = _pathToConstName(iconPath);
      final assetPath = iconPath.replaceAll('\\', '/');
      buffer.writeln('  static const String $constName = \'$assetPath\';');
      icons.add(constName);
      allAssets.add(constName);
    }
    buffer.writeln();
  }

  // Generate lists
  if (images.isNotEmpty) {
    buffer.writeln('  // All images list');
    buffer.writeln('  static const List<String> allImages = [');
    for (final image in images) {
      buffer.writeln('    $image,');
    }
    buffer.writeln('  ];');
    buffer.writeln();
  }

  if (icons.isNotEmpty) {
    buffer.writeln('  // All icons list');
    buffer.writeln('  static const List<String> allIcons = [');
    for (final icon in icons) {
      buffer.writeln('    $icon,');
    }
    buffer.writeln('  ];');
    buffer.writeln();
  }

  if (allAssets.isNotEmpty) {
    buffer.writeln('  // All assets list');
    buffer.writeln('  static const List<String> allAssets = [');
    if (images.isNotEmpty) buffer.writeln('    ...allImages,');
    if (icons.isNotEmpty) buffer.writeln('    ...allIcons,');
    buffer.writeln('  ];');
  }

  buffer.writeln('}');

  // Write to file
  final outputFile = File('lib/core/utils/app_assets.dart');
  outputFile.writeAsStringSync(buffer.toString());
  print('AppAssets generated successfully at ${outputFile.path}');
}

bool _isImageFile(String path) {
  final extensions = ['.png', '.jpg', '.jpeg', '.gif', '.webp', '.svg'];
  return extensions.any((ext) => path.toLowerCase().endsWith(ext));
}

String _pathToConstName(String path) {
  final fileName = path.split('/').last.split('.').first;
  return _toCamelCase(fileName);
}

String _toCamelCase(String input) {
  if (input.isEmpty) return input;

  // Split by common separators
  final parts = input.split(RegExp(r'[-_\s]+'));

  // Convert first part to lowercase, rest to title case
  final result =
      parts.first.toLowerCase() +
      parts
          .skip(1)
          .map(
            (part) => part.isEmpty
                ? ''
                : part[0].toUpperCase() + part.substring(1).toLowerCase(),
          )
          .join('');

  return result;
}
