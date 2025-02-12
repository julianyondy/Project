import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/simpanan_item_model.dart';

// ignore_for_file: must_be_immutable
class SimpananItemWidget extends StatelessWidget {
  SimpananItemWidget(this.simpananItemModelObj, {super.key});

  SimpananItemModel simpananItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 6.h,
      ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconCategory,
                  height: 10.h,
                  width: 14.h,
                  alignment: Alignment.topCenter,
                ),
                SizedBox(width: 10.h),
                Text(
                  simpananItemModelObj.simpananwajib!,
                  style: CustomTextStyles.labelMediumBold,
                )
              ],
            ),
          ),
          SizedBox(height: 6.h),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              simpananItemModelObj.saldo!,
              style: theme.textTheme.labelMedium,
            ),
          ),
          Text(
            simpananItemModelObj.rpCounter!,
            style: theme.textTheme.labelLarge,
          )
        ],
      ),
    );
  }
}

