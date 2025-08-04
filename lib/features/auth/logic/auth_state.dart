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