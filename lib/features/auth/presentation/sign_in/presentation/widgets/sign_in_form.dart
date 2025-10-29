import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required this.headFormText,
    required this.hintLabelFormText,
    this.suffixIcon,
  });

  final String headFormText;
  final String hintLabelFormText;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(headFormText, style: AppTextStyle.labelText14),
              SizedBox(height: 6),
              TextFormField(
                onChanged: (value) {
                  
                },
                
                obscureText:
                    suffixIcon != null, // Only obscure if it's a password field
                decoration: InputDecoration(
                  suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
                  suffixIconColor: AppColors.lightGray,
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
            ],
          ),
        ),
      ],
    );
  }
}
