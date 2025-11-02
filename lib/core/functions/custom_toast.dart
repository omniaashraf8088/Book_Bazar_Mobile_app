import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: non_constant_identifier_names
void CustomToastWidget(msg, {int seconds = 5}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: seconds > 5 ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: seconds,
    backgroundColor: AppColors.purple,
    textColor: AppColors.black,
    fontSize: 18,
  );
}
