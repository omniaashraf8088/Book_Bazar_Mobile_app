import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/features/auth/presentation/verfication_email/presentation/widgets/custom_otp.dart';
import 'package:books_bazar_app/features/auth/presentation/verfication_email/presentation/widgets/custom_verfication_email.dart';
import 'package:books_bazar_app/features/auth/presentation/verfication_email/presentation/widgets/custom_verfication_text.dart';
import 'package:flutter/material.dart';

class VerficationEmailScreen extends StatelessWidget {
  const VerficationEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomVerficationText(
                  labelHeadingText: 'Verification Email',
                  subTitleHeadingText:
                      'Please enter the code we just sent to your email.',
                ),
                const SizedBox(height: 24),
                const CustomOtp(),
                const SizedBox(height: 16),
                const CustomVerficationEmail(),
                const SizedBox(height: 24),
                CustomElvatedAuthButton(
                  text: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.resetPhoneNumber);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
