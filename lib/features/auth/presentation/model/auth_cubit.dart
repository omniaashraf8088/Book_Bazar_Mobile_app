import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(SignUpSuccessState());
  
  signUpWithEmailAndPassword(
   {required String emailAddress,
    required String password,}
  ) async {
  
    try {
      emit(SignUpLoadingState());
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailAddress,
    password: password,
  );
  emit(SignUpSuccessState());
} on FirebaseAuthException catch (e) {

  if (e.code == 'weak-password') {
    emit(SignUpFailureState(errorMessage:'The password provided is too weak.'));
   
  } else if (e.code == 'email-already-in-use') {
  
    emit(SignUpFailureState(errorMessage:'The account already exists for that email.'));
  }
} catch (e) {
 emit(SignUpFailureState(errorMessage: e.toString()));
}
  }

  
}
