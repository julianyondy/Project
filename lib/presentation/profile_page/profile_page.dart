import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart'; // ignore_for_file: must_be_immutable

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: const ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: const ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Container(
                        width: 392.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildAppBar(context),
                            ),
                            SizedBox(height: 36.h),
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                horizontal: 22.h,
                                vertical: 34.h,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onErrorContainer,
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL30,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(right: 6.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 24.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.onErrorContainer,
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                      boxShadow: [
                                        BoxShadow(
                                          color: appTheme.black900
                                              .withOpacity(0.06),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: const Offset(
                                            0,
                                            4,
                                          ),
                                        )
                                      ],
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                height: 40.h,
                                                width: 40.h,
                                                padding: EdgeInsets.all(10.h),
                                                decoration:
                                                    IconButtonStyleHelper.none,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgSettings,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "lbl_my_account".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeDMSansGray900,
                                                    ),
                                                    SizedBox(height: 2.h),
                                                    Text(
                                                      "msg_make_changes_to".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallDMSansGray500,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVideoCamera,
                                                height: 14.h,
                                                width: 16.h,
                                                margin:
                                                    EdgeInsets.only(left: 16.h),
                                              ),
                                              const Spacer(),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowRight,
                                                height: 10.h,
                                                width: 8.h,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 24.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomIconButton(
                                                height: 40.h,
                                                width: 40.h,
                                                padding: EdgeInsets.all(10.h),
                                                decoration:
                                                    IconButtonStyleHelper.none,
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgSettings,
                                                ),
                                              ),
                                              SizedBox(width: 16.h),
                                              Expanded(
                                                child:
                                                    _buildPurchaseHistorySection(
                                                  context,
                                                  purchaseHistoryTitle:
                                                      "msg_saved_beneficiary"
                                                          .tr,
                                                  deviceSecurityDescription:
                                                      "msg_manage_your_saved"
                                                          .tr,
                                                ),
                                              ),
                                              SizedBox(width: 16.h),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowRight,
                                                height: 10.h,
                                                width: 6.h,
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 24.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: GestureDetector(
                                            onTap: () {
                                              onTapHistorytwo(context);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                CustomIconButton(
                                                  height: 40.h,
                                                  width: 40.h,
                                                  padding: EdgeInsets.all(6.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .none,
                                                  alignment: Alignment.center,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .img3232StrokedCheque,
                                                  ),
                                                ),
                                                SizedBox(width: 16.h),
                                                Expanded(
                                                  child:
                                                      _buildPurchaseHistorySection(
                                                    context,
                                                    purchaseHistoryTitle:
                                                        "msg_history_pembelian"
                                                            .tr,
                                                    deviceSecurityDescription:
                                                        "msg_manage_your_device"
                                                            .tr,
                                                  ),
                                                ),
                                                SizedBox(width: 16.h),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowRight,
                                                  height: 10.h,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 12.h),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 24.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: GestureDetector(
                                            onTap: () {
                                              onTapRowtelevision(context);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomIconButton(
                                                  height: 40.h,
                                                  width: 40.h,
                                                  padding: EdgeInsets.all(10.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .none,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTelevision,
                                                  ),
                                                ),
                                                SizedBox(width: 16.h),
                                                Expanded(
                                                  child:
                                                      _buildPurchaseHistorySection(
                                                    context,
                                                    purchaseHistoryTitle:
                                                        "msg_history_pinjaman"
                                                            .tr,
                                                    deviceSecurityDescription:
                                                        "msg_further_secure_your"
                                                            .tr,
                                                  ),
                                                ),
                                                SizedBox(width: 16.h),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowRight,
                                                  height: 10.h,
                                                  width: 6.h,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 24.h),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: GestureDetector(
                                            onTap: () {
                                              onTapRowclockone(context);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomIconButton(
                                                  height: 40.h,
                                                  width: 40.h,
                                                  padding: EdgeInsets.all(10.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillGray,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgClockSecondarycontainer,
                                                  ),
                                                ),
                                                SizedBox(width: 16.h),
                                                Expanded(
                                                  child:
                                                      _buildPurchaseHistorySection(
                                                    context,
                                                    purchaseHistoryTitle:
                                                        "lbl_log_out".tr,
                                                    deviceSecurityDescription:
                                                        "msg_further_secure_your"
                                                            .tr,
                                                  ),
                                                ),
                                                SizedBox(width: 16.h),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowRight,
                                                  height: 10.h,
                                                  width: 6.h,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
                                  _buildMoreOptionsSection(context),
                                  SizedBox(height: 40.h)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      _buildNavigationBar(context)
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 78.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgIconFillUser,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_anto".tr,
              margin: EdgeInsets.only(right: 68.h),
            ),
            AppbarSubtitle(
              text: "lbl_nik_10000000".tr,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMoreOptionsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_more".tr,
            style: CustomTextStyles.titleSmallDMSansGray900,
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadiusStyle.roundedBorder5,
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withOpacity(0.06),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: const Offset(
                    0,
                    4,
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 40.h,
                        width: 42.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_help_support".tr,
                          style: CustomTextStyles.labelLargeDMSansGray900,
                        ),
                      ),
                      const Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 10.h,
                        width: 8.h,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 40.h,
                        width: 40.h,
                        padding: EdgeInsets.all(10.h),
                        decoration: IconButtonStyleHelper.none,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFavorite,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_about_app".tr,
                          style: CustomTextStyles.labelLargeDMSansGray900,
                        ),
                      ),
                      const Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 10.h,
                        width: 8.h,
                      )
                    ],
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
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.black900,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 70.h),
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
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPurchaseHistorySection(
    BuildContext context, {
    required String purchaseHistoryTitle,
    required String deviceSecurityDescription,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          purchaseHistoryTitle,
          style: CustomTextStyles.labelLargeDMSansGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          deviceSecurityDescription,
          style: CustomTextStyles.bodySmallDMSansGray500.copyWith(
            color: appTheme.gray500,
          ),
        )
      ],
    );
  }

  /// Navigates to the historyPembelianScreen when the action is triggered.
  onTapHistorytwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyPembelianScreen,
    );
  }

  /// Navigates to the historyPinjamanScreen when the action is triggered.
  onTapRowtelevision(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.historyPinjamanScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapRowclockone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }
}
