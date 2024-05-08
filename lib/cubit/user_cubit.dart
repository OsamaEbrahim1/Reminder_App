import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:reminder_app/cache/cache_helper.dart';
import 'package:reminder_app/core/api/api_consumer.dart';
import 'package:reminder_app/core/api/end_points.dart';
import 'package:reminder_app/core/errors/exceptions.dart';
import 'package:reminder_app/core/functions/upload_image_to_api.dart';
import 'package:reminder_app/cubit/user_state.dart';
import 'package:reminder_app/models/add_model.dart';
import 'package:reminder_app/models/check_code_model.dart';
import 'package:reminder_app/models/edit_user_model.dart';
import 'package:reminder_app/models/forget_model.dart';
import 'package:reminder_app/models/log_out_model.dart';
import 'package:reminder_app/models/reset_pass_model.dart';
import 'package:reminder_app/models/showone_model.dart';
import 'package:reminder_app/models/sign_in_model.dart';
import 'package:reminder_app/models/sign_up_model.dart';
import 'package:reminder_app/models/update_item_model.dart';
import 'package:reminder_app/models/user_model.dart';
import 'package:reminder_app/service/service_Locator.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;
  //Sign in Form key
  //GlobalKey<FormState> signInFormKey = GlobalKey();
  //Sign in email
  TextEditingController signInEmail = TextEditingController();
  //Sign in password
  TextEditingController signInPassword = TextEditingController();
  //Sign Up Form key
  //GlobalKey<FormState> signUpFormKey = GlobalKey();
  //Profile Pic
  XFile? profilePic;
  //Sign up name
  TextEditingController signUpName = TextEditingController();
  //forget password
  TextEditingController forgetPassword = TextEditingController();
  //checck code
  TextEditingController check_Code = TextEditingController();
  //reset password
  TextEditingController reset_Password = TextEditingController();
  //reset password confirm
  TextEditingController reset_confirm = TextEditingController();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();

  TextEditingController updateName = TextEditingController();
  TextEditingController updateEmail = TextEditingController();
  TextEditingController UpdatePass = TextEditingController();
  TextEditingController UpdateConfirm_pass = TextEditingController();

  TextEditingController productName = TextEditingController();
  TextEditingController proDate = TextEditingController();
  TextEditingController expDate = TextEditingController();
  TextEditingController startReminder = TextEditingController();
  TextEditingController BatchNumber = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController category = TextEditingController();

  TextEditingController updateTitle = TextEditingController();
  TextEditingController updateProDate = TextEditingController();
  TextEditingController updateExpDate = TextEditingController();
  TextEditingController updateStartReminder = TextEditingController();
  TextEditingController updateCode = TextEditingController();
  TextEditingController updateItemImage = TextEditingController();
  SignInModel? user; //هناخد متغير من الموديل اللي عملناه علشان نستقبل الريسبوند
  
  AddItemModel? product;
  uploadProfilePic(XFile image) {
    profilePic = image;
    emit(UploadProfilePic());
  }

  signIn() async {
    try {
      emit(SignInLoading());
      final response = await api.post(
        EndPoints.signIn,
        data: {
          ApiKey.email: signInEmail.text,
          ApiKey.password: signInPassword.text,
        },
      );
      user =
          SignInModel.fromJson(response); //جواه الماسيدج والتوكين اللي راجعين
      getIt<CacheHelper>().saveData(key: ApiKey.token, value: user!.token);
            //final decodedToken = JwtDecoder.decode(user!.token);
//print(decodedToken['id']);
      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errmessage: e.errModel.errorMessage));
    }
  }

  signUp() async {
    try {
      emit(SignUpLoading());
      final response = await api.post(
        EndPoints.signUp,
        isFormData: true,
        data: {
          ApiKey.name: signUpName.text,
          ApiKey.email: signUpEmail.text,
          ApiKey.password: signUpPassword.text,
          ApiKey.confirm_password: confirmPassword.text,
          ApiKey.image: await uploadImageToAPI(profilePic!)
        },
      );
      final signUpModel = SignUpModel.fromJson(response);
      emit(SignUpSuccess(message: signUpModel.status));
    } on ServerException catch (e) {
      emit(SignUpFailure(errMessage: e.errModel.errorMessage));
    }
  }

  getUserProfile() async {
    try {
      emit(GetUserLoading());
      final response = await api.get(
        EndPoints.Profile,
      );
      emit(GetUserSuccess(user: UserModel.fromJson(response)));
    } on ServerException catch (e) {
      emit(GetUserFailure(errMessage: e.errModel.errorMessage));
    }
  }

  logOut() async {
    try {
      emit(LogOutLoading());
      final response = await api.post(
        EndPoints.LogOut,
      );
      emit(LogOutSuccess());
    } on ServerException catch (e) {
      emit(LogOutFailure(errmessage: e.errModel.errorMessage));
    }
  }

  forgetPass() async {
    try {
      emit(ForgetPassLoading());
      final response = await api.post(
        EndPoints.forgetpassword,
        data: {
          ApiKey.email: forgetPassword.text,
        },
      );
      final forgetModel = ForgetModel.fromJson(response);
      final successMessage = forgetModel.status
          ? 'Password reset successful'
          : 'Password reset failed';
      emit(ForgetPassSuccess(message: successMessage));
    } on ServerException catch (e) {
      emit(ForgetPassFailure(errMessage: e.errModel.errorMessage));
    }
  }

  checkCode() async {
    try {
      emit(CheckCodeLoading());
      final response = await api.post(
        EndPoints.checkCode,
        data: {
          ApiKey.email: check_Code.text,
        },
      );
      
      emit(CheckCodeSuccess());
    } on ServerException catch (e) {
      emit(CheckCodeFailure(errMessage: e.errModel.errorMessage));
    }
  }

  resetPass() async{
    try {
      emit(ResetPasswordLoading());
      final response = await api.post(
        EndPoints.resetPassword,
        data: {
          ApiKey.password: reset_Password.text,
          //ApiKey.confirm_password: reset_confirm.text,
        },
      );
      final resetModel = ResetPassModel.fromJson(response);
      emit(ResetPasswordSuccess(message: resetModel.message));
    } on ServerException catch (e) {
      emit(ResetPasswordFailure(errMessage: e.errModel.errorMessage));
    }
  }

  updateProfile() async {
    try {
      emit(EditUserLoading());
      final response = await api.post(
        EndPoints.updateProfile,
        isFormData: true,
        data: {
          ApiKey.name: updateName.text,
          ApiKey.email: updateEmail.text,
          ApiKey.password: UpdatePass.text,
          ApiKey.confirm_password: UpdateConfirm_pass.text,
          ApiKey.image: await uploadImageToAPI(profilePic!)
        },
      );
      emit(EditUserSuccess(message: EditUserModel.fromJson(response)));
    } on ServerException catch (e) {
      emit(EditUserFailure(errMessage: e.errModel.errorMessage));
    }
  }

  addItem() async {
    try {
      emit(AddItemLoading());
      final response = await api.post(
        EndPoints.addItem,
        isFormData: true,
        data: {
          ApiKey.title: productName.text,
          ApiKey.pro_date: proDate.text,
          ApiKey.exp_date: expDate.text,
          ApiKey.start_reminder: startReminder.text,
          ApiKey.description: description.text,
          ApiKey.category_id: category.text,
          ApiKey.code: BatchNumber.text,
          ApiKey.item_image: await uploadImageToAPI(profilePic!)
        },
      );
      product = AddItemModel.fromJson(response);
      getIt<CacheHelper>().saveData(key: ApiKey.id, value: product!.id);
      emit(AddItemSuccess(message: AddItemModel.fromJson(response)));
    } on ServerException catch (e) {
      emit(AddItemFailure(errMessage: e.errModel.errorMessage));
    }
  }

  updateItem() async {
    try {
      emit(UpdateLoading());
      final response = await api.post(
        EndPoints.updatedata(CacheHelper().getData(key: ApiKey.id)),
        isFormData: true,
        data: {
          ApiKey.code = updateCode.text,
          ApiKey.title = updateTitle.text,
          ApiKey.item_image = updateItemImage.text,
          ApiKey.pro_date = updateProDate.text,
          ApiKey.exp_date = updateExpDate.text,
          ApiKey.start_reminder = updateStartReminder.text
        },
      );
      emit(UpdateSuccess(message: UpdateItemModel.fromJson(response)));
    } on ServerException catch (e) {
      emit(UpdateFailure(errMessage: e.errModel.errorMessage));
    }
  }

  showOne() async {
    try {
      emit(ShowOneLoading());
      final response = await api.get(
        EndPoints.showone(CacheHelper().getData(key: ApiKey.id)),
      );
      emit(ShowOneSuccess());
    } on ServerException catch (e) {
      emit(ShowOneFailure(errMessage: e.errModel.errorMessage));
    }
  }

  delete() async {
    try {
      emit(DeleteLoading());
  final response = await api.delete(
    EndPoints.delete(CacheHelper().getData(key: ApiKey.id)),
  );
  emit(DeleteSuccess());
} on ServerException catch (e) {
  emit(DeleteFailure(errMessage: e.errModel.errorMessage));
}
  }
}
