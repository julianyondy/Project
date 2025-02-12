import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_function.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => SignInBloc(SignInState(
        signInModelObj: const SignInModel(),
      ))
        ..add(SignInInitialEvent()),
      child: SignInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: SizeUtils.height,
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.h,
                        vertical: 74.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          _buildSigninSection(context),
                          SizedBox(height: 46.h),
                          _buildCredentialsSection(context),
                          const Spacer(),
                          _buildLoginSection(context)
                        ],
                      ),
                    ),
                  )
                ],
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
            "lbl_sign_in".tr,
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
  Widget _buildCredentialsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child:
                BlocSelector<SignInBloc, SignInState, TextEditingController?>(
              selector: (state) => state.emailController,
              builder: (context, emailController) {
                return CustomTextFormField(
                  controller: emailController,
                  hintText: "lbl_email".tr,
                  hintStyle: CustomTextStyles.bodyLargePoppinsBluegray40001,
                  textInputType: TextInputType.emailAddress,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 18.h,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGray,
                  fillColor: appTheme.gray50,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                );
              },
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: BlocBuilder<SignInBloc, SignInState>(
              builder: (context, state) {
                return CustomTextFormField(
                  controller: state.languageController,
                  hintText: "lbl".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: InkWell(
                    onTap: () {
                      context.read<SignInBloc>().add(
                          ChangePasswordVisibilityEvent(
                              value: !state.isShowPassword));
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 18.h, 24.h, 18.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVisibilityoffBlueGray80001,
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
                  borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        children: [
          CustomElevatedButton(
            text: "lbl_log_in".tr,
            margin: EdgeInsets.only(right: 2.h),
            onPressed: () {
              onTapLogin(context);
            },
          ),
          SizedBox(height: 16.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              children: [
                Text(
                  "msg_don_t_have_account".tr,
                  style: CustomTextStyles.bodyMediumPoppinsBluegray80001,
                ),
                GestureDetector(
                  onTap: () {
                    onTapTxtSignupone(context);
                  },
                  child: Text(
                    "lbl_sign_up".tr,
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

  /// Navigates to the homePageScrollScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScrollScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignupone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}