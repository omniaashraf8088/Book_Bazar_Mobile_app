import 'package:books_bazar_app/core/utils/app_assets.dart';
import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomResetPhoneNumber extends StatelessWidget {
  const CustomResetPhoneNumber({
    super.key,
    required this.hintLabelFormText,
    required this.labelFormText,
  });
  final String labelFormText;
  final String hintLabelFormText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Phone Number',

              style: AppTextStyle.labelText14.copyWith(color: AppColors.black),
            ),
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Image(
                image: AssetImage(AppAssets.phoneOutlineIcon),
                width: 24,
                height: 24,
                color: AppColors.lightGray,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  style: AppTextStyle.labelText14.copyWith(
                    color: AppColors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: hintLabelFormText,
                    hintStyle: const TextStyle(color: AppColors.lightGray),
                    filled: true,
                    fillColor: AppColors.lightBackgroundTextField,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
