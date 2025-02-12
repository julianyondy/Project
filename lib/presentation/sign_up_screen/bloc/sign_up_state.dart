part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.

// ignore_for_file: must_be_immutable
class SignUpState extends Equatable {
  SignUpState(
      {this.nameInputController,
      this.emailInputController,
      this.nikInputController,
      this.isShowPassword = true,
      this.termsAgreement = false,
      this.signUpModelObj});

  TextEditingController? nameInputController;

  TextEditingController? emailInputController;

  TextEditingController? nikInputController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool termsAgreement;

  @override
  List<Object?> get props => [
        nameInputController,
        emailInputController,
        nikInputController,
        isShowPassword,
        termsAgreement,
        signUpModelObj
      ];
  SignUpState copyWith({
    TextEditingController? nameInputController,
    TextEditingController? emailInputController,
    TextEditingController? nikInputController,
    bool? isShowPassword,
    bool? termsAgreement,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      nameInputController: nameInputController ?? this.nameInputController,
      emailInputController: emailInputController ?? this.emailInputController,
      nikInputController: nikInputController ?? this.nikInputController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      termsAgreement: termsAgreement ?? this.termsAgreement,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}

