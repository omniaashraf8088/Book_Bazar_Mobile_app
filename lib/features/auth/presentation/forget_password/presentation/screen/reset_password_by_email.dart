import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/label_heading_text.dart';
import 'package:flutter/material.dart';

class ResetPasswordByEmailScreen extends StatelessWidget {
  const ResetPasswordByEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const LabelHeadingText(
              isHeadingLabelInCenter: false,
              isSubTitleInCenter: false,
              labelHeadingText: 'Reset Password',
              subTitleHeadingText:
                  'Please enter your email, we will send verification code to your email.',
            ),
            const SizedBox(height: 24),
            Text(
              'Email Address',
              style: AppTextStyle.labelText14,
              
            ),
            const SizedBox(height: 8),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                fillColor: AppColors.lightBackgroundTextField,
                filled: true,
                hintText: 'omn@gmail.com',
                hintStyle: AppTextStyle.gray16w400,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomElvatedAuthButton(
                text: 'Send',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.verficationEmailScreen);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
