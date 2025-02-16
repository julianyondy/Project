import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/date_time_utils.dart';
import '../../widgets/custom_text_form_field.dart';
import '../simpanan_scroll_bottomsheet/simpanan_scroll_bottomsheet.dart';
import 'bloc/simpanan_pokok_bloc.dart';
import 'models/simpanan_pokok_model.dart';

class SimpananPokokScreen extends StatelessWidget {
  const SimpananPokokScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<SimpananPokokBloc>(
      create: (context) => SimpananPokokBloc(SimpananPokokState(
        simpananPokokModelObj: SimpananPokokModel(),
      ))
        ..add(SimpananPokokInitialEvent()),
      child: const SimpananPokokScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 18.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _buildPrimarySavingsInfo(context),
                      SizedBox(height: 16.h),
                      _buildMarchInfo(context),
                      SizedBox(height: 44.h),
                      _buildAmountAndCalendar(context)
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
  }

  /// Section Widget
  Widget _buildPrimarySavingsInfo(BuildContext context) {
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
            child: GestureDetector(
              onTap: () {
                onTapRowpolygonone(context);
              },
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPolygon1,
                    height: 10.h,
                    width: 5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_kembali".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "lbl_simpanan_pokok".tr,
                style: theme.textTheme.headlineLarge,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_date".tr,
                  style: CustomTextStyles.titleSmallEpilogueGray90001,
                ),
                SizedBox(height: 4.h),
                BlocSelector<SimpananPokokBloc, SimpananPokokState,
                    TextEditingController?>(
                  selector: (state) => state.datetwoController,
                  builder: (context, datetwoController) {
                    return CustomTextFormField(
                      readOnly: true,
                      controller: datetwoController,
                      hintText: "lbl_dd_mm_yyyy".tr,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 12.h,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgThumbsup,
                          height: 24.h,
                          width: 24.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 48.h,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 12.h,
                      ),
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineBlueGray,
                      fillColor: theme.colorScheme.onErrorContainer,
                      onTap: () {
                        onTapDatetwo(context);
                      },
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMarchInfo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 28.h,
        top: 10.h,
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.blueGray100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_maret_2024".tr,
            style: CustomTextStyles.titleSmallBlack900,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAmountAndCalendar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 18.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_rp_1_000_000".tr,
            style: theme.textTheme.headlineMedium,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 20.h,
                  width: 18.h,
                  margin: EdgeInsets.only(top: 4.h),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "msg_yesterday_at_13_03".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
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

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [SimpananScrollBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapRowpolygonone(BuildContext context) {
    showModalBottomSheet(
        context: NavigatorService.navigatorKey.currentContext!,
        builder: (_) => SimpananScrollBottomsheet.builder(
            NavigatorService.navigatorKey.currentContext!),
        isScrollControlled: true);
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// current [simpananPokokModelObj] object if the user selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapDatetwo(BuildContext context) async {
    var initialState = BlocProvider.of<SimpananPokokBloc>(context).state;
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (!context.mounted) return;
    if (dateTime != null) {
      context.read<SimpananPokokBloc>().add(ChangeDateEvent(date: dateTime));
      initialState.datetwoController?.text =
          dateTime.format(pattern: SHORT_DATE);
    }
  }
}
