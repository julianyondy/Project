import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/totalsimpananslider_item_model.dart';

// ignore_for_file: must_be_immutable
class TotalsimpanansliderItemWidget extends StatelessWidget {
  TotalsimpanansliderItemWidget(this.totalsimpanansliderItemModelObj,
      {super.key});

  TotalsimpanansliderItemModel totalsimpanansliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(top: 14.h),
      decoration: BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadiusStyle.roundedBorder20,
        border: Border.all(
          color: appTheme.blueGray800,
          width: 1.h,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            totalsimpanansliderItemModelObj.totalsimpanan!,
            style: CustomTextStyles.titleLargeBold,
          ),
          SizedBox(height: 6.h),
          Text(
            totalsimpanansliderItemModelObj.rp2000000!,
            style: theme.textTheme.displaySmall,
          ),
          SizedBox(height: 12.h)
        ],
      ),
    );
  }
}

