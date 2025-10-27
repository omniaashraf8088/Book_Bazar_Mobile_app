
import 'package:books_bazar_app/core/database/cache/cache_helper.dart';
import 'package:books_bazar_app/core/router/router_expert.dart';
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/service/service_locator.dart';
import 'package:flutter/material.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
   //Bloc.observer = AppBlocObserver();
   setupServiceLocator();
   await getIt<CacheHelper>().init();
  getIt.registerSingleton;
  runApp(const BooksBaZarApp());
}

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
