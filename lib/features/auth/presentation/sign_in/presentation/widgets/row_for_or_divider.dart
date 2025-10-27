import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class RowForOrDivider extends StatelessWidget {
  const RowForOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(color: AppColors.lightPurpel, thickness: 1, endIndent: 16),
        ),
        Text('Or with', style: AppTextStyle.bodyTextGray14Light),
        Expanded(
          child: Divider(color: AppColors.lightPurpel, thickness: 1, indent: 16),
        ),
      ],
    );
  }
}
