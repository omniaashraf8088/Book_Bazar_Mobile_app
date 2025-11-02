import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:books_bazar_app/core/utils/assets.gen.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:flutter/material.dart';

class CustomAlartDialogWidget extends StatelessWidget {
  const CustomAlartDialogWidget({super.key,
    required this.title,
    required this.message,
    required this.buttonText,
  });
  final String title;
  final String message;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      content: SizedBox(
        width: 360,
        height: 327,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 160,
              height: 91,
              child: Assets.iconsImages.verficationIcons.image(
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 16),
            Text(title, style: AppTextStyle.headingText24),
            const SizedBox(height: 8),
            Text(
             message,
              style: AppTextStyle.gray16w400,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            CustomElvatedAuthButton(
              text:buttonText,
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                Navigator.pushNamed(context, Routes.home); // Navigate to home
              },
            ),
          ],
        ),
      ),
    );
    
  }
}
