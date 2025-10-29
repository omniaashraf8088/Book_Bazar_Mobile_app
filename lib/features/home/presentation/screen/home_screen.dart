import 'package:books_bazar_app/core/widgets/custom_appbar.dart';
import 'package:books_bazar_app/features/home/presentation/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppbar(text: 'Home'),
        body: const HomeBody(),
      ),
    );
  }
}
