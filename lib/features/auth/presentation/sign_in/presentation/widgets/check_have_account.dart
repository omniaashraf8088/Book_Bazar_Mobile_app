import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CheckHaveAccount extends StatelessWidget {
  const CheckHaveAccount({
    super.key,
    required this.textAsk,
    required this.textAction,
    this.onTap,
  });
  final String textAsk;
  final String textAction;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(textAsk, style: AppTextStyle.bodyTextGray16Medium),
          InkWell(
            onTap: () {
              onTap?.call();
            },
            borderRadius: BorderRadius.circular(4),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              child: Text(
                textAction,
                style: AppTextStyle.bodyTextGray16Medium.copyWith(
                  color: AppColors.purple,
                 
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
