import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/loanlist_item_model.dart';

// ignore_for_file: must_be_immutable
class LoanlistItemWidget extends StatelessWidget {
  LoanlistItemModel loanlistItemModelObj;

  LoanlistItemWidget(this.loanlistItemModelObj, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 8.h,
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
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIconCategoryBlueGray600,
                height: 20.h,
                width: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  loanlistItemModelObj.label!,
                  style: CustomTextStyles.labelMediumBold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 26.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 2.h,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                  border: Border.all(
                    color: appTheme.blueGray800.withOpacity(0.4),
                    width: 1.h,
                  ),
                ),
                child: Text(
                  loanlistItemModelObj.selesai!,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.labelMedium,
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        loanlistItemModelObj.pokokpinjaman!,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        loanlistItemModelObj.rpCounter!,
                        style: theme.textTheme.labelLarge,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18.h),
                  child: Column(
                    children: [
                      Text(
                        loanlistItemModelObj.pokokpinjaman1!,
                        style: theme.textTheme.labelMedium,
                      ),
                      Text(
                        loanlistItemModelObj.rpcounterOne!,
                        style: theme.textTheme.labelLarge,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loanlistItemModelObj.durasi!,
                          style: theme.textTheme.labelMedium,
                        ),
                        Text(
                          loanlistItemModelObj.bulanCounter!,
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          loanlistItemModelObj.disetujuioleh!,
                          style: theme.textTheme.labelMedium,
                        ),
                        Text(
                          loanlistItemModelObj.bulan!,
                          style: theme.textTheme.labelLarge,
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loanlistItemModelObj.disetujuioleh1!,
                      style: theme.textTheme.labelMedium,
                    ),
                    Text(
                      loanlistItemModelObj.andihananto!,
                      style: theme.textTheme.labelLarge,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 2.h)
        ],
      ),
    );
  }
}
