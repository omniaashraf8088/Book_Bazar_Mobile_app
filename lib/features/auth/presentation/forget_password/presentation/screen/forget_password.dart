import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/utils/assets.gen.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';

import 'package:books_bazar_app/features/auth/presentation/forget_password/presentation/widgets/custom_container_forget_password.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/label_heading_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            const LabelHeadingText(
              isHeadingLabelInCenter: false,
              isSubTitleInCenter: false,
              labelHeadingText: 'Forgot Password',
              subTitleHeadingText:
                  'Select which contact details should we use to reset your password',
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: CustomContainerForgetPassword(
                    imagePath: Assets.iconsImages.email.path,
                    text: 'Email',
                    subText: 'Send to your email',
                    routePath: Routes.resetPasswordByEmail,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: CustomContainerForgetPassword(
                    imagePath: Assets.iconsImages.phoneFill.path,
                    text: 'Phone Number',
                    subText: 'Send to your phone',
                    routePath: Routes.resetPasswordByPhoneNum,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 49),
            CustomElvatedAuthButton(text: 'Continue', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
