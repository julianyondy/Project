import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/approval_bloc.dart';
import 'models/approval_model.dart';

class ApprovalScreen extends StatelessWidget {
  const ApprovalScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<ApprovalBloc>(
      create: (context) => ApprovalBloc(ApprovalState(
        approvalModelObj: const ApprovalModel(),
      ))
        ..add(ApprovalInitialEvent()),
      child: const ApprovalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApprovalBloc, ApprovalState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(
                        left: 18.h,
                        top: 2.h,
                        right: 18.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "lbl_approval".tr,
                            style:
                                CustomTextStyles.headlineLargePoppinsIndigo500,
                          ),
                          SizedBox(height: 4.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Text(
                              "msg_please_wait_for".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .bodyMediumPoppinsBluegray600
                                  .copyWith(
                                height: 1.57,
                              ),
                            ),
                          ),
                          SizedBox(height: 62.h),
                          Container(
                            height: 122.h,
                            width: 100.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray50,
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                              border: Border.all(
                                color: appTheme.blueGray50,
                                width: 1.h,
                                strokeAlign: BorderSide.strokeAlignOutside,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage1,
                                  height: 62.h,
                                  width: 64.h,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 80.h),
                          CustomElevatedButton(
                            text: "lbl_submit".tr,
                            margin: EdgeInsets.only(left: 2.h),
                            onPressed: () {
                              onTapSubmit(context);
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: _buildNavigationBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.h,
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 24.h),
        onTap: () {
          onTapArrowleftone(context);
        },
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

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the popUpApprovalScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.popUpApprovalScreen,
    );
  }
}
