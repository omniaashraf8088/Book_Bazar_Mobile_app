
import 'package:books_bazar_app/core/widgets/custom_alart_dialog.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/features/auth/presentation/forget_password/presentation/widgets/customNewPasswordField.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/label_heading_text.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       LabelHeadingText(labelHeadingText: 'New Password', 
       subTitleHeadingText: 'Create your new password, so you can login to your account.',),
       SizedBox(height: 24,),
        Customnewpasswordfield(),
        SizedBox(height: 81),
        CustomElvatedAuthButton(text: 'Send',
         onPressed: () {
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => CustomAlartDialogWidget(title: 'Password Changed!',
           message: 'Password changed successfully, you can login again with a new password',
            buttonText: 'Login',),));
          
        },)
      ],
    );
  }
}