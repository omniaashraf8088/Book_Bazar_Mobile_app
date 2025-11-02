
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/widgets/custom_alart_dialog.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/label_heading_text.dart';
import 'package:books_bazar_app/features/auth/verification_auth/verfication_send_phone_code/presentation/widgets/custom_verfication_phone_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyPhoneCodeScreen extends StatelessWidget {
  const VerifyPhoneCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LabelHeadingText(
                  labelHeadingText: 'Verification Phone',
                  subTitleHeadingText:
                      'Please enter the code we just sent to phone number  (+20) 123477092 299',
                ),
                SizedBox(height: 40),
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: Color(0xFF512DA8),
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},

                  onSubmit: (String verificationCode) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return CustomAlartDialogWidget(title: 'Congratulations!', 
                        message: 'your account is complete, please enjoy the best menu from us.', 
                        buttonText: 'Get Started',);
                      },
                    );
                  },
                ),
                SizedBox(height: 24),
                CustomVerficationPhoneCode(),
                 SizedBox(height: 43),
                 CustomElvatedAuthButton(text:  'Continue',
                 
                 onPressed: (){
                   Navigator.pushNamed(context, Routes.home);
                 }
                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
