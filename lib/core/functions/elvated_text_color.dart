// Determine text color based on button background color
import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

Color getTextColor(Color color) {
  Color textColor = AppColors.purple;
  if (color == AppColors.purple) {
    textColor = AppColors.white; // Purple button → White text
  } else if (color == AppColors.white) {
    textColor = AppColors.purple; // White button → Purple text
  }
  return textColor;
}