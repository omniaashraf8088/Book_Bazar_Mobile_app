import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomContainerForgetPassword extends StatelessWidget {
  const CustomContainerForgetPassword({
    super.key,
    required this.imagePath,
    required this.text,
    required this.subText,
    required this.routePath,
  });
  final String imagePath;
  final String text;
  final String subText;
  final String routePath;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.pushNamed(context, routePath);
        },
        child: Container(
          width: 158,
          height: 151,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.lightGray),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
             
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageIcon(
                  AssetImage(imagePath),
                  size: 24,
                  color: AppColors.purple,
                ),
                const SizedBox(height: 16),
                Text(text, style: AppTextStyle.labelText14),
                const SizedBox(height: 13),
                Text(subText, style: AppTextStyle.bodyTextGray14Light),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
