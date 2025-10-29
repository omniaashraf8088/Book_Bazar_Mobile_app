import 'package:books_bazar_app/app/books_bazar_app.dart';
import 'package:books_bazar_app/core/database/cache/cache_helper.dart';
import 'package:books_bazar_app/core/functions/check_auth_state_change.dart';
import 'package:books_bazar_app/core/service/service_locator.dart';
import 'package:books_bazar_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //Bloc.observer = AppBlocObserver();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  getIt.registerSingleton;

  checkAuthStateChanges();
  runApp(const BooksBaZarApp());
}

