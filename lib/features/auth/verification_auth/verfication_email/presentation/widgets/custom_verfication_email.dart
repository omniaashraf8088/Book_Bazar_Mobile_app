import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomVerficationEmail extends StatelessWidget {
  const CustomVerficationEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('If you didn’t receive a code?',style: AppTextStyle.grayText14w600 ),
        Text('Resend',style: AppTextStyle.grayText14w600.copyWith(
          color: AppColors.purple
        ) ,),
      ],
    );
  }
}