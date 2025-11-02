import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(SignUpSuccessState());
  String? userName;
  String? emailAddress;
  String? password;
  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      print('email: $emailAddress, password: $password');
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          SignUpFailureState(
            errorMessage: 'The password provided is too weak.',
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          SignUpFailureState(
            errorMessage: 'The account already exists for that email.',
          ),
        );
      }
    } catch (e) {
      emit(SignUpFailureState(errorMessage: e.toString()));
    }
  }

  SignInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errorMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(
          SignInFailureState(
            errorMessage: 'Wrong password provided for that user.',
          ),
        );
      }
    } catch (e) {
      emit(SignInFailureState(errorMessage: e.toString()));
    }
  }
}
