import 'package:dalel/features/auth/logic/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  late String? firstName;
  late String? lastName;
  late String? emailAddress;
  late String? password;

  singUpWithEmailAndPassword() async {
    try {
      emit(state is Signuploading ? state : Signuploading());
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailAddress!,
            password: password!,
          );
 
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailure('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailure('The account already exists for that email.'));
      }
    } catch (e) {
      print(e);
    }
  }
}
