import 'package:books_bazar_app/core/service/service_locator.dart';

import 'package:books_bazar_app/features/auth/presentation/forget_password/presentation/screen/forget_password.dart';
import 'package:books_bazar_app/features/auth/presentation/forget_password/presentation/screen/new_password.dart';
import 'package:books_bazar_app/features/auth/presentation/forget_password/presentation/screen/reset_password_by_email.dart';
import 'package:books_bazar_app/features/auth/presentation/forget_password/presentation/screen/reset_password_by_phone_num.dart';
import 'package:books_bazar_app/features/auth/presentation/model/auth_cubit.dart';
import 'package:books_bazar_app/features/auth/presentation/register_phone_number/presentation/screen/reset_phone_number.dart';
import 'package:books_bazar_app/features/auth/verification_auth/verfication_send_phone_code/presentation/screen/send_phone_code.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/screen/signin_screen.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_up/presentation/screen/sign_up_screen.dart';
import 'package:books_bazar_app/features/auth/verification_auth/verfication_email/presentation/screen/verfication_email.dart';
import 'package:books_bazar_app/features/home/presentation/screen/home_screen.dart';
import 'package:books_bazar_app/features/on_boarding/presentation/screen/on_bording_screen.dart';
import 'package:flutter/material.dart';
import 'package:books_bazar_app/features/splash/presentation/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'routes.dart';

part 'app_router.dart';
