// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsImagesGen {
  const $AssetsIconsImagesGen();

  /// File path: assets/icons_images/Calendar.png
  AssetGenImage get calendar =>
      const AssetGenImage('assets/icons_images/Calendar.png');

  /// File path: assets/icons_images/Cart-Fill-icon-bar.png
  AssetGenImage get cartFillIconBar =>
      const AssetGenImage('assets/icons_images/Cart-Fill-icon-bar.png');

  /// File path: assets/icons_images/Google - Original.png
  AssetGenImage get googleOriginal =>
      const AssetGenImage('assets/icons_images/Google - Original.png');

  /// File path: assets/icons_images/Home-Fill-icon-bar.png
  AssetGenImage get homeFillIconBar =>
      const AssetGenImage('assets/icons_images/Home-Fill-icon-bar.png');

  /// File path: assets/icons_images/Location-Fill.png
  AssetGenImage get locationFill =>
      const AssetGenImage('assets/icons_images/Location-Fill.png');

  /// File path: assets/icons_images/Menu-Fill-icon-bar.png
  AssetGenImage get menuFillIconBar =>
      const AssetGenImage('assets/icons_images/Menu-Fill-icon-bar.png');

  /// File path: assets/icons_images/Notification-icon.png
  AssetGenImage get notificationIcon =>
      const AssetGenImage('assets/icons_images/Notification-icon.png');

  /// File path: assets/icons_images/Password-Outline-icon.png
  AssetGenImage get passwordOutlineIcon =>
      const AssetGenImage('assets/icons_images/Password-Outline-icon.png');

  /// File path: assets/icons_images/Phone-Fill.png
  AssetGenImage get phoneFill =>
      const AssetGenImage('assets/icons_images/Phone-Fill.png');

  /// File path: assets/icons_images/Phone-Icon.png
  AssetGenImage get phoneIcon =>
      const AssetGenImage('assets/icons_images/Phone-Icon.png');

  /// File path: assets/icons_images/Profile-Fill-icon-bar.png
  AssetGenImage get profileFillIconBar =>
      const AssetGenImage('assets/icons_images/Profile-Fill-icon-bar.png');

  /// File path: assets/icons_images/Search-gary-icon.png
  AssetGenImage get searchGaryIcon =>
      const AssetGenImage('assets/icons_images/Search-gary-icon.png');

  /// File path: assets/icons_images/Search-icon.png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/icons_images/Search-icon.png');

  /// File path: assets/icons_images/Verfication-Icons.png
  AssetGenImage get verficationIcons =>
      const AssetGenImage('assets/icons_images/Verfication-Icons.png');

  /// File path: assets/icons_images/apple-icon.png
  AssetGenImage get appleIcon =>
      const AssetGenImage('assets/icons_images/apple-icon.png');

  /// File path: assets/icons_images/email.png
  AssetGenImage get email =>
      const AssetGenImage('assets/icons_images/email.png');

  /// File path: assets/icons_images/gray-rate-star.png
  AssetGenImage get grayRateStar =>
      const AssetGenImage('assets/icons_images/gray-rate-star.png');

  /// File path: assets/icons_images/location-mark.png
  AssetGenImage get locationMark =>
      const AssetGenImage('assets/icons_images/location-mark.png');

  /// File path: assets/icons_images/payment-icon.png
  AssetGenImage get paymentIcon =>
      const AssetGenImage('assets/icons_images/payment-icon.png');

  /// File path: assets/icons_images/payment-method-1.png
  AssetGenImage get paymentMethod1 =>
      const AssetGenImage('assets/icons_images/payment-method-1.png');

  /// File path: assets/icons_images/payment-method-2.png
  AssetGenImage get paymentMethod2 =>
      const AssetGenImage('assets/icons_images/payment-method-2.png');

  /// File path: assets/icons_images/yello-rate-star.png
  AssetGenImage get yelloRateStar =>
      const AssetGenImage('assets/icons_images/yello-rate-star.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    calendar,
    cartFillIconBar,
    googleOriginal,
    homeFillIconBar,
    locationFill,
    menuFillIconBar,
    notificationIcon,
    passwordOutlineIcon,
    phoneFill,
    phoneIcon,
    profileFillIconBar,
    searchGaryIcon,
    searchIcon,
    verficationIcons,
    appleIcon,
    email,
    grayRateStar,
    locationMark,
    paymentIcon,
    paymentMethod1,
    paymentMethod2,
    yelloRateStar,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/best-vendors.png
  AssetGenImage get bestVendors =>
      const AssetGenImage('assets/images/best-vendors.png');

  /// File path: assets/images/forget_password_success.png
  AssetGenImage get forgetPasswordSuccess =>
      const AssetGenImage('assets/images/forget_password_success.png');

  /// File path: assets/images/onBoarding1.png
  AssetGenImage get onBoarding1 =>
      const AssetGenImage('assets/images/onBoarding1.png');

  /// File path: assets/images/onBoarding2.png
  AssetGenImage get onBoarding2 =>
      const AssetGenImage('assets/images/onBoarding2.png');

  /// File path: assets/images/onBoarding3.png
  AssetGenImage get onBoarding3 =>
      const AssetGenImage('assets/images/onBoarding3.png');

  /// File path: assets/images/splash-screen.png
  AssetGenImage get splashScreen =>
      const AssetGenImage('assets/images/splash-screen.png');

  /// File path: assets/images/top-of-week.png
  AssetGenImage get topOfWeek =>
      const AssetGenImage('assets/images/top-of-week.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bestVendors,
    forgetPasswordSuccess,
    onBoarding1,
    onBoarding2,
    onBoarding3,
    splashScreen,
    topOfWeek,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsImagesGen iconsImages = $AssetsIconsImagesGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
