import 'package:books_bazar_app/router/router_expert.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooksBaZarApp());
}

class BooksBaZarApp extends StatelessWidget {
  const BooksBaZarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books Bazar App',
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
