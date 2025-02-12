import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/pop_up_simpanan_pokok_bloc.dart';
import 'models/pop_up_simpanan_pokok_model.dart';

class PopUpSimpananPokokScreen extends StatelessWidget {
  const PopUpSimpananPokokScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<PopUpSimpananPokokBloc>(
      create: (context) => PopUpSimpananPokokBloc(PopUpSimpananPokokState(
        popUpSimpananPokokModelObj: const PopUpSimpananPokokModel(),
      ))
        ..add(PopUpSimpananPokokInitialEvent()),
      child: const PopUpSimpananPokokScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopUpSimpananPokokBloc, PopUpSimpananPokokState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray5001,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 14.h,
                top: 20.h,
                right: 14.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "lbl_simpanan_pokok".tr,
                    style: CustomTextStyles.titleLargeBold,
                  ),
                  SizedBox(height: 18.h),
                  _buildDateRow(context)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDateRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_tanggal".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 6.h),
              Text(
                "lbl_08_04_2024".tr,
                style: theme.textTheme.bodySmall,
              )
            ],
          ),
          _buildReferenceColumn(
            context,
            referenceText: "lbl_jumlah".tr,
            referenceNumber: "lbl_rp_1_000_000".tr,
          ),
          _buildReferenceColumn(
            context,
            referenceText: "lbl_referensi".tr,
            referenceNumber: "lbl_22501982773".tr,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildReferenceColumn(
    BuildContext context, {
    required String referenceText,
    required String referenceNumber,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          referenceText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          referenceNumber,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
  }
}

