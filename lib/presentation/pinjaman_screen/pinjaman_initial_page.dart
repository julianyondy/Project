import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/pinjaman_bloc.dart';
import 'models/pinjaman_initial_model.dart';

class PinjamanInitialPage extends StatefulWidget {
  const PinjamanInitialPage({super.key});

  @override
  PinjamanInitialPageState createState() => PinjamanInitialPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PinjamanBloc>(
      create: (context) => PinjamanBloc(PinjamanState(
        pinjamanInitialModelObj: PinjamanInitialModel(),
      ))
        ..add(PinjamanInitialEvent()),
      child: const PinjamanInitialPage(),
    );
  }
}

class PinjamanInitialPageState extends State<PinjamanInitialPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 850.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [_buildAndroidNavigationBar(context)],
                ),
              ),
            ),
            Container(
              width: 392.h,
              padding: EdgeInsets.only(
                left: 18.h,
                top: 22.h,
                right: 18.h,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.onErrorContainer,
                borderRadius: BorderRadiusStyle.customBorderTL30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_pinjaman".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 34.h),
                  _buildEmployeeNumberSection(context),
                  SizedBox(height: 4.h),
                  _buildEmployeeNameSection(context),
                  SizedBox(height: 6.h),
                  _buildLoanAmountSection(context),
                  SizedBox(height: 4.h),
                  _buildReasonSection(context),
                  SizedBox(height: 6.h),
                  _buildLoanTermSection(context),
                  SizedBox(height: 6.h),
                  _buildInterestRateSection(context),
                  SizedBox(height: 6.h),
                  _buildTotalLoanSection(context),
                  SizedBox(height: 6.h),
                  _buildMonthlyInstallmentSection(context),
                  SizedBox(height: 86.h),
                  Container(
                    height: 60.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 76.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 14.h,
                            width: 172.h,
                            margin: EdgeInsets.only(bottom: 6.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 18.h),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "lbl_pinjam".tr,
                                style: CustomTextStyles
                                    .headlineSmallPoppinsOnErrorContainer,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAndroidNavigationBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 40.h),
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 12.h,
          ),
          decoration: BoxDecoration(
            color: appTheme.black900,
          ),
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmployeeNumberInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: BlocSelector<PinjamanBloc, PinjamanState, TextEditingController?>(
        selector: (state) => state.employeeNumberInputController,
        builder: (context, employeeNumberInputController) {
          return CustomTextFormField(
            controller: employeeNumberInputController,
            contentPadding: EdgeInsets.all(12.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmployeeNumberSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_nomor_karyawan".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          _buildEmployeeNumberInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmployeeNameInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: BlocSelector<PinjamanBloc, PinjamanState, TextEditingController?>(
        selector: (state) => state.employeeNameInputController,
        builder: (context, employeeNameInputController) {
          return CustomTextFormField(
            controller: employeeNameInputController,
            contentPadding: EdgeInsets.all(12.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmployeeNameSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_nama".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 2.h),
          _buildEmployeeNameInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoanAmountInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: BlocSelector<PinjamanBloc, PinjamanState, TextEditingController?>(
        selector: (state) => state.loanAmountInputController,
        builder: (context, loanAmountInputController) {
          return CustomTextFormField(
            controller: loanAmountInputController,
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL51,
            fillColor: appTheme.gray5001,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLoanAmountSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_jumlah_pinjaman".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 2.h),
          _buildLoanAmountInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReasonInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: BlocSelector<PinjamanBloc, PinjamanState, TextEditingController?>(
        selector: (state) => state.reasonInputController,
        builder: (context, reasonInputController) {
          return CustomTextFormField(
            controller: reasonInputController,
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL51,
            fillColor: appTheme.gray5001,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReasonSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_alasan".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 4.h),
          _buildReasonInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoanTermSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_jangka_waktu".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: BlocSelector<PinjamanBloc, PinjamanState,
                PinjamanInitialModel?>(
              selector: (state) => state.pinjamanInitialModelObj,
              builder: (context, pinjamanInitialModelObj) {
                return CustomDropDown(
                  icon: Container(
                    margin: EdgeInsets.only(left: 16.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdown,
                      height: 16.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  iconSize: 16.h,
                  items: pinjamanInitialModelObj?.dropdownItemList ?? [],
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 8.h,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInterestRateInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: BlocSelector<PinjamanBloc, PinjamanState, TextEditingController?>(
        selector: (state) => state.interestRateInputController,
        builder: (context, interestRateInputController) {
          return CustomTextFormField(
            controller: interestRateInputController,
            contentPadding: EdgeInsets.all(12.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildInterestRateSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_bunga_pinjaman".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 2.h),
          _buildInterestRateInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalLoanInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: BlocSelector<PinjamanBloc, PinjamanState, TextEditingController?>(
        selector: (state) => state.totalLoanInputController,
        builder: (context, totalLoanInputController) {
          return CustomTextFormField(
            controller: totalLoanInputController,
            contentPadding: EdgeInsets.all(12.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalLoanSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_total_pinjaman".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 2.h),
          _buildTotalLoanInput(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMonthlyInstallmentInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: BlocSelector<PinjamanBloc, PinjamanState, TextEditingController?>(
        selector: (state) => state.monthlyInstallmentInputController,
        builder: (context, monthlyInstallmentInputController) {
          return CustomTextFormField(
            controller: monthlyInstallmentInputController,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.all(12.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMonthlyInstallmentSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_angsuran_per_bulan".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 2.h),
          _buildMonthlyInstallmentInput(context)
        ],
      ),
    );
  }
}





              




