import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:books_bazar_app/core/utils/assets.gen.dart';
import 'package:flutter/material.dart';

class CustomSoicalMediaButton extends StatelessWidget {
  const CustomSoicalMediaButton({
    super.key,
    required this.imageAsset,
    required this.buttonText,
  });

  final AssetGenImage imageAsset;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white,
            minimumSize: const Size(327, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 16,
                height: 16,
                child: imageAsset.image(
                  width: 16,
                  height: 16,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 16),
              Text(buttonText, style: AppTextStyle.signInWithGoogleText),
            ],
          ),
        ),
      ],
    );
  }
}
