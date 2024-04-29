import 'package:reminder_app/models/user_model.dart';

class UserState {}

final class UserInitial extends UserState {}
final class SignInSuccess extends UserState {}
final class SignInLoading extends UserState {}
final class SignInFailure extends UserState {
  final String errmessage;

  SignInFailure({required this.errmessage});
}
final class UploadProfilePic extends UserState {}

final class SignUpSuccess extends UserState {
  final String message;

  SignUpSuccess({required this.message});
}
final class SignUpLoading extends UserState {}
final class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}


final class GetUserSuccess extends UserState {
  final UserModel user;

  GetUserSuccess({required this.user});
}
final class GetUserLoading extends UserState {}
final class GetUserFailure extends UserState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}