import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomResetPhoneNumber extends StatelessWidget {
  const CustomResetPhoneNumber({
    super.key,
    required this.labelFormText,
    required this.hintLabelFormText,
  });

  final String labelFormText;
  final String hintLabelFormText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(labelFormText, style: AppTextStyle.labelText14),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightBackgroundTextField,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: AppColors.lightGray, size: 20),
                        const SizedBox(width: 8),
                        Text('+965', style: AppTextStyle.gray16w400),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        fillColor: AppColors.lightBackgroundTextField,
                        filled: true,
                        hintText: hintLabelFormText,
                        hintStyle: AppTextStyle.gray16w400,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
