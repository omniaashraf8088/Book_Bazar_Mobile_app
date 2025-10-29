import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomVerficationText extends StatelessWidget {
  const CustomVerficationText({
    super.key,
    required this.labelHeadingText,
    required this.subTitleHeadingText,
  });
  final String labelHeadingText;
  final String subTitleHeadingText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
        Text(
          labelHeadingText,
          style: AppTextStyle.headingText24,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          subTitleHeadingText,
          style: AppTextStyle.gray16w400,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
