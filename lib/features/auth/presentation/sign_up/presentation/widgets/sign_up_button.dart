import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomElvatedAuthButton(
      text: 'Register',
      onPressed:
          onPressed ??
          () {
            Navigator.pushNamed(context, Routes.verficationEmailScreen);
          }
            
           
    );
  }
}
