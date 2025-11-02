import 'package:books_bazar_app/core/functions/navigation.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/material.dart';

Future<void> delayCustomnavigation(BuildContext context, String path) async {
  await Future.delayed(const Duration(seconds: 2));

  FlutterNativeSplash.remove();

  customNavigation(context, path);
}
