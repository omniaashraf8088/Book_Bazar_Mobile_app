
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/features/auth/presentation/reset_phone_number/presentation/widgets/custom_reset_num.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/label_heading_text.dart';
import 'package:flutter/material.dart';

class ResetPhoneNumberScreen extends StatelessWidget {
  const ResetPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: const LabelHeadingText(
                labelHeadingText: 'Phone Number',
                subTitleHeadingText:
                    'Please enter your phone number, so we can more easily deliver your order',
              ),
            ),
            const SizedBox(height: 32),
             const CustomResetPhoneNumber(
                labelFormText: 'Phone Number',
                hintLabelFormText: '(+965) 123 435 7565',
              ),
            
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomElvatedAuthButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.verifyPhoneCode);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
