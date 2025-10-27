import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomForgetPasswordText extends StatelessWidget {
  const CustomForgetPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       
        Navigator.pushNamed(context, Routes.forgetPassword);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Text(
          'Forgot Password?',
          style: AppTextStyle.forgotPasswordText
        ),
      ),
    );
  }
}
