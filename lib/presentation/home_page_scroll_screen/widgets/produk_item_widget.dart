import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/produk_item_model.dart';

// ignore_for_file: must_be_immutable
class ProdukItemWidget extends StatelessWidget {
  ProdukItemWidget(this.produkItemModelObj, {super.key});

  ProdukItemModel produkItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.h,
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 86.h),
          Text(
            produkItemModelObj.namaprodukone!,
            style: CustomTextStyles.labelMediumBold,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              produkItemModelObj.harga!,
              style: theme.textTheme.labelLarge,
            ),
          )
        ],
      ),
    );
  }
}

