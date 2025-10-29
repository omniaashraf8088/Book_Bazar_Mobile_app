
import 'package:books_bazar_app/core/utils/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomOtp extends StatelessWidget {
  const CustomOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 4,
      borderColor: AppColors.purple,

      showFieldAsBox: true,

      onCodeChanged: (String code) {},

      onSubmit: (String verificationCode) {
        
      }, // end onSubmit
    );
  }
}
