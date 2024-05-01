import 'package:reminder_app/models/log_out_model.dart';
import 'package:reminder_app/models/user_model.dart';

class UserState {}

final class UserInitial extends UserState {}

//signIn
final class SignInSuccess extends UserState {}
final class SignInLoading extends UserState {}
final class SignInFailure extends UserState {
  final String errmessage;

  SignInFailure({required this.errmessage});
}


//uploadImage
final class UploadProfilePic extends UserState {}



//signUp
final class SignUpSuccess extends UserState {
  final String message;

  SignUpSuccess({required this.message});
}
final class SignUpLoading extends UserState {}
final class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}



//Profile=getuser
final class GetUserSuccess extends UserState {
  final UserModel user;

  GetUserSuccess({required this.user});
}
final class GetUserLoading extends UserState {}
final class GetUserFailure extends UserState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}


//LogOut
final class LogOutSuccess extends UserState {
  final LogOutModel message;

  LogOutSuccess({required this.message});
}
final class LogOutLoading extends UserState {}
final class LogOutFailure extends UserState {
  final String errmessage;

  LogOutFailure({required this.errmessage});
}


//Forget Password
final class ForgetPassSuccess extends UserState {
  final String message;

  ForgetPassSuccess({required this.message});
}
final class ForgetPassLoading extends UserState {}
final class ForgetPassFailure extends UserState {
  final String errMessage;

  ForgetPassFailure({required this.errMessage});
}