import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomContainerForgetPassword extends StatelessWidget {
  const CustomContainerForgetPassword({
    super.key,
    required this.imagePath,
    required this.text,
    required this.subText,
  });
  final String imagePath;
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 151,
      padding: EdgeInsets.all(16),

      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightPurpel),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageIcon(AssetImage(imagePath), size: 24, color: AppColors.purple),
          SizedBox(height: 16),
          Text(text, style: AppTextStyle.labelText14),
          SizedBox(height: 13),
          Text(subText, style: AppTextStyle.bodyTextGray14Light),
        ],
      ),
    );
  }
}
