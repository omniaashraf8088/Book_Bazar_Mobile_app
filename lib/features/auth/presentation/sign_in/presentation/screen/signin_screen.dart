import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 0),
        body: SignInBody()
      ),
    );
  }
}

