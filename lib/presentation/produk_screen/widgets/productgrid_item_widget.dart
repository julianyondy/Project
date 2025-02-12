import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/productgrid_item_model.dart';

// ignore_for_file: must_be_immutable
class ProductgridItemWidget extends StatelessWidget {
  ProductgridItemWidget(this.productgridItemModelObj, {super.key});

  ProductgridItemModel productgridItemModelObj;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 32.h,
        top: 8.h,
        bottom: 8.h,
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
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: 88.h,
            width: 78.h,
            margin: EdgeInsets.only(left: 4.h),
          ),
          Text(
            productgridItemModelObj.weight!,
            style: CustomTextStyles.labelMediumBold,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              productgridItemModelObj.rpCounter!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 4.h)
        ],
      ),
    );
  }
}

