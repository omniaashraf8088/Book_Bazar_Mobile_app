import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomElvatedAuthButton extends StatelessWidget {
  const CustomElvatedAuthButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple,
        minimumSize: const Size(327, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
     
        disabledBackgroundColor: AppColors.purple.withValues(alpha: 0.7),
      ),
      onPressed:
          onPressed ,
      child: Text(text, style: AppTextStyle.customButtonText),
    );
  }
}
