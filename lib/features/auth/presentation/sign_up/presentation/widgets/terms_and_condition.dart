import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'By clicking Register, you agree to our',
            style: AppTextStyle.bodyTextGray14Light,
            textAlign: TextAlign.center,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/terms_and_conditions');
            },
            child: Text(
              'Terms, Data Policy.',
              style: AppTextStyle.bodyTextGray14Light.copyWith(
                color: AppColors.purple,
                
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
