import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_function.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(SignUpState(
        signUpModelObj: const SignUpModel(),
      ))
        ..add(SignUpInitialEvent()),
      child: SignUpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 46.h,
                  right: 18.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 26.h),
                    _buildSigninSection(context),
                    SizedBox(height: 46.h),
                    _buildCredentialsSection(context),
                    SizedBox(height: 130.h),
                    _buildTermsAgreement(context),
                    SizedBox(height: 38.h),
                    _buildLoginSection(context)
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildNavigationBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSigninSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        children: [
          Text(
            "lbl_sign_up".tr,
            style: CustomTextStyles.headlineLargePoppinsIndigo500,
          ),
          SizedBox(height: 4.h),
          Text(
            "msg_bergabunglah_dengan".tr,
            style: CustomTextStyles.bodyMediumPoppinsBluegray600,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.nameInputController,
        builder: (context, nameInputController) {
          return CustomTextFormField(
            controller: nameInputController,
            hintText: "lbl_name".tr,
            hintStyle: CustomTextStyles.bodyLargePoppinsBluegray400,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 18.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            fillColor: appTheme.gray50,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
        selector: (state) => state.emailInputController,
        builder: (context, emailInputController) {
          return CustomTextFormField(
            controller: emailInputController,
            hintText: "lbl_email".tr,
            hintStyle: CustomTextStyles.bodyLargePoppinsBluegray400,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 18.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            fillColor: appTheme.gray50,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNikInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: BlocBuilder<SignUpBloc, SignUpState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.nikInputController,
            hintText: "lbl_nik".tr,
            hintStyle: CustomTextStyles.bodyLargePoppinsBluegray400,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                context.read<SignUpBloc>().add(ChangePasswordVisibilityEvent(
                    value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16.h, 18.h, 24.h, 18.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVisibilityoff,
                  height: 24.h,
                  width: 24.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 60.h,
            ),
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 18.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillGray,
            fillColor: appTheme.gray50,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCredentialsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        children: [
          _buildNameInput(context),
          SizedBox(height: 16.h),
          _buildEmailInput(context),
          SizedBox(height: 16.h),
          _buildNikInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTermsAgreement(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<SignUpBloc, SignUpState, bool?>(
        selector: (state) => state.termsAgreement,
        builder: (context, termsAgreement) {
          return CustomCheckboxButton(
            text: "msg_i_m_agree_to_the".tr,
            isExpandedText: true,
            value: termsAgreement,
            onChange: (value) {
              context.read<SignUpBloc>().add(ChangeCheckBoxEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_creat_account".tr,
      margin: EdgeInsets.only(left: 2.h),
      onPressed: () {
        onTapCreateAccountButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        children: [
          _buildCreateAccountButton(context),
          SizedBox(height: 6.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              children: [
                Text(
                  "msg_do_you_have_account".tr,
                  style: CustomTextStyles.bodyMediumPoppinsBluegray80001,
                ),
                GestureDetector(
                  onTap: () {
                    onTapTxtSignintwo(context);
                  },
                  child: Text(
                    "lbl_sign_in".tr,
                    style: CustomTextStyles.bodyMediumPoppinsPrimary,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return Container(
      height: 42.h,
      padding: EdgeInsets.symmetric(
        horizontal: 88.h,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.black900,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 14.h,
            width: 14.h,
            radius: BorderRadius.circular(
              1.h,
            ),
          ),
          Container(
            height: 16.h,
            width: 16.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          Container(
            height: 14.h,
            width: 14.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the approvalScreen when the action is triggered.
  onTapCreateAccountButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.approvalScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtSignintwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }
}

