import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_tittle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../simpanan_scroll_bottomsheet/simpanan_scroll_bottomsheet.dart';
import 'bloc/home_page_scroll_bloc.dart';
import 'models/home_page_scroll_model.dart';
import 'models/produk_item_model.dart';
import 'models/simpanan_item_model.dart';
import 'widgets/produk_item_widget.dart';
import 'widgets/simpanan_item_widget.dart';


class HomePageScrollScreen extends StatelessWidget {
    HomePageScrollScreen({super.key});

    GlobalKey<NavigatorState> navigatorKey = GlobalKey();

    static Widget builder(BuildContext context) {
        return BlocProvider<HomePageScrollBloc>(
            create: (context) => HomePageScrollBloc(HomePageScrollState(
                homePageScrollModelObj: HomePageScrollModel(),
            ))
                ..add(HomePageScrollEvent()),
            child: HomePageScrollScreen(),
            );
    }

    @override
    Widget build(BuildContext context) {
        return SafeArea(
            child: Scaffold(
                backgroundColor: theme.colorScheme.primary,
                body: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        children: [
                            Expanded(
                                child: SingleChildScrollView(
                                    child: Container(
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                        ),
                                       child: Column(
                                        children: [
                                            SizedBox(
                                                width: double.maxFinite,
                                                child: _buildAppBar(context),
                                            ),
                                            SizedBox(height: 24.h),
                                            Container(
                                                width: double.maxFinite,
                                                padding: EdgeInsets.symmetric(vertical: 22.h),
                                                decoration: BoxDecoration(
                                                    color: theme.colorScheme.onErrorContainer,
                                                    borderRadius: BorderRadiusStyle.customBorderTL30,
                                                ),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        _buildProfileCard(context),
                                                        SizedBox(height: 14.h),
                                                        _buildSavingsSection(context),
                                                        SizedBox(height: 4.h),
                                                        _buildProductsSection(context),
                                                        SizedBox(height: 14.h),
                                                        _buildLoansSection(context),
                                                        SizedBox(height: 6.h),
                                                        _buildNavigationMenu(context),
                                                        SizedBox(height: 44.h)
                                                    ],
                                                ),
                                            )
                                        ],
                                       ), 
                                    ),
                                ),
                            ),
                            SizedBox(height: 42.h)
                        ],
                    ),
                ),
                bottomNavigationBar: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                        left: 44.h,
                        right: 44.h,
                        bottom: 42.h,
                    ),
                    child: _buildBottomBar(context),
                ),
            ),
        );
    }


    PreferredSizeWidget _buildAppBar(BuildContext context) {
        return CustomAppBar(
            height: 50.h,
            leadingWidth: 50.h,
            leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgPlayOnerrorcontainer,
                height: 50.h,
                width: 50.h,
                margin: EdgeInsets.only(left: 24.h),
            ),
            title: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Column(
                    children: [
                        AppbarTitle(
                            text: "lbl_selamat_datang".tr,
                            margin: EdgeInsets.only(right: 124.h),
                        ),
                        AppbarSubtitleTwo(
                            text: "msg_di_koperasi_lumbung".tr,
                        )
                    ],
                ),
            ),
            actions: [
                Container(
                    height: 28.h,
                    width:26.h,
                    margin: EdgeInsets.only(right: 21.h),
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcon34,
                          height: 24.h,
                          width: 26.h,
                          margin: EdgeInsets.only(right: 2.h),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 18.h,
                            height: 18.h,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 10.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onError,
                              borderRadius: BorderRadius.circular(
                                8.h,
                              ),
                            ),
                            child: Text(
                              "Ibl_3".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelMediumPoppinsOnErrorContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                )
            ],
        );
    }

    /// Section Widget
    Widget _buildProfileCard(BuildContext context) {
      return Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          left: 22.h,
          right: 18.h,
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 4.h),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 4.h,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray5001,
                borderRadius: BorderRadiusStyle.roundedBorder20,
                border: Border.all(
                  color: appTheme.blueGray800.withOpacity(0.4),
                  width: 1.h,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                        imagePath: ImageConstant.imgPlayOnerrorcontainer,
                        height: 40.h,
                        width: 40.h,
                      ),
                      SizedBox(width: 10.h),
                      Text(
                        "lbl_reza_rahadian".tr,
                        style: CustomTextStyles.titleMedium18,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_nip_nik_1111000000011001".tr,
                    style: CustomTextStyles.titleMediumBluegray80018,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_total_shu".tr,
                        style: CustomTextStyles.titleMediumBluegray80018,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_rp_2_000_000".tr,
                          style: CustomTextStyles.titleMediumBluegray800,
                        ),
                      ),
                      const Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgVisibilityoff,
                        height: 18.h,
                        width: 20.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(
                          top: 2.h,
                          right: 10.h,
                        ),
                      )  
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "msg_anggota_sejak".tr,
                    style: CustomTextStyles.labelMediumPoppins,
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
  Widget _buildSavingsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_simpanan".tr,
                  style: CustomTextStyles.titleLargeBluegray800,
                ),
                GestureDetector(
                  onTap: () {
                    onTapTxtMorebutton(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 32.h),
                    child: Text(
                      "lbl_more".tr,
                      style: CustomTextStyles.titleSmallMedium,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Container(
            child: BlocSelector<HomePageScrollBloc, HomePageScrollState,
                HomePageScrollModel?>(
              selector: (state) => state.homePageScrollModelObj,
              builder: (context, homePageScrollModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 8.h,
                    children: List.generate(
                      homePageScrollModelObj?.simpananItemList.length ?? 0,
                      (index) {
                        SimpananItemModel model =
                            homePageScrollModelObj?.simpananItemList[index] ??
                              SimpananItemModel();
                        return SimpananItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );              
  }

  /// Section Widget
  Widget _buildProductsSection(BuildContext context) {
    return Container(
      height: 178.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 24.h),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            child: BlocSelector<HomePageScrollBloc, HomePageScrollState,
                HomePageScrollModel?>(
              selector: (state) => state.homePageScrollModelObj,
              builder: (context, homePageScrollModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: List.generate(
                      homePageScrollModelObj?.produkItemList.length ?? 0,
                      (index) {
                        ProdukItemModel model =
                            homePageScrollModelObj?.produkItemList[index] ??
                                ProdukItemModel();
                        return ProdukItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_produk".tr,
                            style: CustomTextStyles.titleLargeBluegray800,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: () {
                                onTapTxtMorebuttonone(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 42.h,
                                  bottom: 2.h,
                                ),
                                child: Text(
                                  "lbl_more".tr,
                                  style: CustomTextStyles.titleSmallMedium,
                                ),
                              ),
                            ),
                          )
                        ],
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

  /// Section Widget
  Widget _buildLoansSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 18.h,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_pinjaman".tr,
                  style: CustomTextStyles.titleLargeBluegray800,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Text(
                    "lbl_more".tr,
                    style: CustomTextStyles.titleSmallMedium,
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
  Widget _buildNavigationMenu(BuildContext context) {
    return SizedBox(
      height: 174.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18.h,
                                  vertical: 8.h,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.gray5001,
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                  border: Border.all(
                                    color:
                                        appTheme.blueGray800.withOpacity(0.4),
                                    width: 1.h,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children:[
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconCategoryBlueGray600,
                                                      height: 20.h,
                                                      width: 20.h,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text(
                                                          "msg_pinjaman_jangka"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .labelMediumBold,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(height: 10.h),
                                                Text(
                                                  "lbl_pokok_pinjaman".tr,
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 82.h,
                                            margin:
                                                EdgeInsets.only(right: 20.h),
                                            child: Column(
                                              children: [
                                                CustomOutlinedButton(
                                                  text: "lbl_aktif".tr,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 4.h),
                                                ),
                                                SizedBox(height: 10.h),
                                                Text(
                                                  "lbl_total_pinjaman".tr,
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 72.h),
                                    Text(
                                      "lbl_andi_hananto".tr,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                    SizedBox(height: 2.h)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 14.h,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onErrorContainer,
                  ),     
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLocation,
                            height: 24.h,
                            width: 26.h,
                            margin: EdgeInsets.only(left: 6.h),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "lbl_home".tr,
                            style:
                                CustomTextStyles.labelLargeSecondaryContainer,
                          )
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpIndigo200,
                        height: 24.h,
                        width: 26.h,
                        onTap: () {
                          onTapImgThumbsupone(context);
                        },
                      ),
                      const Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 24.h,
                        width: 26.h,
                        onTap: () {
                          onTapImgClockone(context);
                        },
                      ),
                      const Spacer(
                        flex: 50,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 24.h,
                        width: 26.h,
                        margin: EdgeInsets.only(right: 4.h),
                      )
                    ],
                  ),
                ),
                Container(
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {},
      ),
    );
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [SimpananScrollBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapTxtMorebutton(BuildContext context) {
    showModalBottomSheet(
        context: NavigatorService.navigatorKey.currentContext!,
        builder: (_) => SimpananScrollBottomsheet.builder(
            NavigatorService.navigatorKey.currentContext!),
        isScrollControlled: true);
  }

  /// Navigates to the produkScreen when the action is triggered.
  onTapTxtMorebuttonone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.produkScreen,
    );
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [SimpananScrollBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapImgThumbsupone(BuildContext context) {
    showModalBottomSheet(
        context: NavigatorService.navigatorKey.currentContext!,
        builder: (_) => SimpananScrollBottomsheet.builder(
            NavigatorService.navigatorKey.currentContext!),
        isScrollControlled: true);
  }

  /// Navigates to the pinjamanScreen when the action is triggered.
  onTapImgClockone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pinjamanScreen,
    );
  }
}

