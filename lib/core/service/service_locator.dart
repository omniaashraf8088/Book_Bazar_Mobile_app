import 'package:books_bazar_app/core/database/cache/cache_helper.dart';
import 'package:books_bazar_app/features/auth/presentation/model/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());

  
}
