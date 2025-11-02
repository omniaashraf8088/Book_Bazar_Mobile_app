import 'package:books_bazar_app/features/auth/presentation/sign_up/presentation/widgets/sign_up_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(elevation: 0),
     body: const SignUpBody());
  }
}
