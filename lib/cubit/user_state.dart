class UserState {}

final class UserInitial extends UserState {}
final class SignInSuccess extends UserState {}
final class SignInLoading extends UserState {}
final class SignInFailure extends UserState {
  final String errmessage;

  SignInFailure({required this.errmessage});
}