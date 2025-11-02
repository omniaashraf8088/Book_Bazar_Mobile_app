import 'package:books_bazar_app/core/functions/elvated_text_color.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomElevatedOnboardingButton extends StatelessWidget {
  const CustomElevatedOnboardingButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });
  final String text;
  final VoidCallback onPressed;
  final Color color;


  @override
  Widget build(BuildContext context) {
    final textColor = getTextColor(color);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyle.customButtonText.copyWith(color: textColor),
      ),
    );
  }

 
}
