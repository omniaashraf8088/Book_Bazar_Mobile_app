import 'package:books_bazar_app/core/functions/navigation.dart';
import 'package:books_bazar_app/core/router/routes.dart';

import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:books_bazar_app/features/on_boarding/presentation/screen/function/onboarding.dart';
import 'package:books_bazar_app/features/on_boarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: TextButton(
            onPressed: () {},
            child: GestureDetector(
              onTap: () {
                onBoardingMethod();
                customNavigation(context, Routes.signUp);
              },
              child: Text('Skip', style: AppTextStyle.skipText),
            ),
          ),
        ),
        body: OnBoardingBody(onPageChanged: PageController.new),
      ),
    );
  }
}
