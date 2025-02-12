import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/history_pembelian_bloc.dart';
import 'models/history_pembelian_model.dart';
import 'models/purchasehistorylist_item_model.dart';
import 'widgets/purchasehistorylist_item_widget.dart';

class HistoryPembelianScreen extends StatelessWidget {
  const HistoryPembelianScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryPembelianBloc>(
      create: (context) => HistoryPembelianBloc(
        HistoryPembelianState(
          historyPembelianModelObj: HistoryPembelianModel(),
        ),
      )..add(HistoryPembelianInitialEvent()),
      child: const HistoryPembelianScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 18.h,
                    right: 18.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeaderRow(context),
                      SizedBox(height: 4.h),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "msg_histori_pembelian".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      _buildPurchaseHistoryList(context),
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
  Widget _buildHeaderRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPurchaseHistoryList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<HistoryPembelianBloc, HistoryPembelianState,
            HistoryPembelianModel?>(
          selector: (state) => state.historyPembelianModelObj,
          builder: (context, historyPembelianModelObj) {
            return ListView.separated(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.h);
              },
              itemCount: historyPembelianModelObj
                      ?.purchasehistorylistItemList.length ??
                  0,
              itemBuilder: (context, index) {
                PurchasehistorylistItemModel model =
                    historyPembelianModelObj?.purchasehistorylistItemList[index] ??
                        PurchasehistorylistItemModel();
                return PurchasehistorylistItemWidget(model);
              },
            );
          },
        ),
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
            radius: BorderRadius.circular(1.h),
          ),
          Container(
            height: 16.h,
            width: 16.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadius.circular(8.h),
            ),
          ),
          Container(
            height: 14.h,
            width: 14.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadius.circular(2.h),
            ),
          ),
        ],
      ),
    );
  }
}
