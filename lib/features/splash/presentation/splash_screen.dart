import 'package:books_bazar_app/core/database/cache/cache_helper.dart';
import 'package:books_bazar_app/core/functions/delay_navigation.dart';
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/service/service_locator.dart';
import 'package:books_bazar_app/core/utils/assets.gen.dart';
import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:books_bazar_app/features/on_boarding/presentation/screen/function/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeAndNavigate();
  }

  Future<void> _initializeAndNavigate() async {
    bool isVistedBefor =
        getIt<CacheHelper>().getData(key: 'isVistedBefor') ?? false;
    if (!isVistedBefor) {
      onBoardingMethod();
      FirebaseAuth.instance.currentUser == null
          ? delayCustomnavigation(context, Routes.signUp)
          : delayCustomnavigation(context, Routes.home);
    } else {
      onBoardingMethod();
      delayCustomnavigation(context, Routes.onBoarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.splashScreen.image(height: 38, width: 38),
            const SizedBox(width: 12.62),
            Text('Bazar.', style: AppTextStyle.splashTitle),
          ],
        ),
      ),
    );
  }
}
