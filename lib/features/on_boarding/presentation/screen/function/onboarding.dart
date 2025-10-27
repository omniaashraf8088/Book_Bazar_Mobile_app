import 'package:books_bazar_app/core/database/cache/cache_helper.dart';
import 'package:books_bazar_app/core/service/service_locator.dart';

void onBoardingMethod(){

   getIt<CacheHelper>().saveData(key: 'isVistedBefor', value: true);
}