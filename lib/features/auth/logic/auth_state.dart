abstract class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpSuccess extends AuthState {

}
final class SignUpFailure extends AuthState {
  final String message;

  SignUpFailure(this.message);
}
final class Signuploading extends AuthState {}
final class ObscurePasswordTextUpdateState extends AuthState {}


final class SigninLoadingState extends AuthState {}

final class SigninSuccessState extends AuthState {}

final class SigninFailureState extends AuthState {
  final String errMessage;

  SigninFailureState({required this.errMessage});
}

final class ResetPasswordLoadingState extends AuthState {}

final class ResetPasswordSuccessState extends AuthState {}

final class ResetPasswordFailureState extends AuthState {
  final String errMessage;

  ResetPasswordFailureState({required this.errMessage});
}

final class TermsAndConditionUpdateState extends AuthState {}

