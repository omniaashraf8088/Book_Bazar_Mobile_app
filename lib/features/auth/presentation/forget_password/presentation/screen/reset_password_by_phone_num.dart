import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/label_heading_text.dart';
import 'package:flutter/material.dart';

class ResetPasswordByPhoneNum extends StatelessWidget {
  const ResetPasswordByPhoneNum({super.key});

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
                  'Please enter your phone number, we will send a verification code to your phone number.',
            ),
            const SizedBox(height: 24),
            Text('Phone Number', style: AppTextStyle.labelText14),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.lightBackgroundTextField,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.phone, color: AppColors.lightGray, size: 20),
                      const SizedBox(width: 8),
                      Text('+965', style: AppTextStyle.gray16w400),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      fillColor: AppColors.lightBackgroundTextField,
                      filled: true,
                      hintText: '010-1234-5678',
                      hintStyle: AppTextStyle.gray16w400,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomElvatedAuthButton(
                text: 'Send',
                onPressed: () {
                  // Navigate to verification screen
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
