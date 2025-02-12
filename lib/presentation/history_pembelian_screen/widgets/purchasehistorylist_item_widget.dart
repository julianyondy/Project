import '../models/purchasehistorylist_item_model.dart';
import '../../../core/app_export.dart';
import 'package:flutter/material.dart';

class PurchasehistorylistItemWidget extends StatelessWidget {
  // ignore_for_file: must_be_immutable

  final PurchasehistorylistItemModel purchasehistorylistItemModelObj;

  const PurchasehistorylistItemWidget(this.purchasehistorylistItemModelObj, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
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
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGrid,
                height: 20.h,
                width: 18.h,
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      purchasehistorylistItemModelObj.weight!,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                    Text(
                      purchasehistorylistItemModelObj.barangCounter!,
                      style: CustomTextStyles.labelLargeMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.only(right: 34.h),
            child: Text(
              purchasehistorylistItemModelObj.totalharga!,
              style: theme.textTheme.labelMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: Text(
              purchasehistorylistItemModelObj.rpCounter!,
              style: CustomTextStyles.titleSmallBold_1,
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20.h),
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 2.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                  border: Border.all(
                    color: appTheme.blueGray800.withOpacity(0.4),
                    width: 1.h,
                  ),
                ),
                child: Text(
                  purchasehistorylistItemModelObj.selesai!,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  purchasehistorylistItemModelObj.tanggal!,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
