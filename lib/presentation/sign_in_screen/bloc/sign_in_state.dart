part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.

// ignore_for_file: must_be_immutable
class SignInState extends Equatable {
  SignInState(
      {this.emailController,
      this.languageController,
      this.isShowPassword = true,
      this.signInModelObj});

  TextEditingController? emailController;

  TextEditingController? languageController;

  SignInModel? signInModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props =>
      [emailController, languageController, isShowPassword, signInModelObj];
  SignInState copyWith({
    TextEditingController? emailController,
    TextEditingController? languageController,
    bool? isShowPassword,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      emailController: emailController ?? this.emailController,
      languageController: languageController ?? this.languageController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}

