import 'package:books_bazar_app/core/router/router_expert.dart';
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:flutter/material.dart';

class BooksBaZarApp extends StatelessWidget {
  const BooksBaZarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books Bazar',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Routes.splash,
    );
  }
}
