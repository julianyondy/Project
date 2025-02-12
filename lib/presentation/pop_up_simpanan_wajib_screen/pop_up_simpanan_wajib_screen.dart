import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/pop_up_simpanan_wajib_bloc.dart';
import 'models/pop_up_simpanan_wajib_model.dart';

class PopUpSimpananWajibScreen extends StatelessWidget {
  const PopUpSimpananWajibScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<PopUpSimpananWajibBloc>(
      create: (context) => PopUpSimpananWajibBloc(PopUpSimpananWajibState(
        popUpSimpananWajibModelObj: const PopUpSimpananWajibModel(),
      ))
        ..add(PopUpSimpananWajibInitialEvent()),
      child: const PopUpSimpananWajibScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopUpSimpananWajibBloc, PopUpSimpananWajibState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray5001,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 14.h,
                top: 18.h,
                right: 14.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "lbl_simpanan_wajib".tr,
                    style: CustomTextStyles.titleLargeBold,
                  ),
                  SizedBox(height: 18.h),
                  _buildRowTanggalSection(context)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowTanggalSection(BuildContext context) {
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
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 34.h),
                        child: Text(
                          "lbl_jumlah".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Text(
                        "lbl_referensi".tr,
                        style: theme.textTheme.bodyMedium,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_rp_1_000_000".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Text(
                        "lbl_22501982773".tr,
                        style: theme.textTheme.bodySmall,
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
}

