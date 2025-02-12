import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/history_pinjaman_bloc.dart';
import 'models/history_pinjaman_model.dart';
import 'models/loanlist_item_model.dart';
import 'widgets/loanlist_item_widget.dart';

class HistoryPinjamanScreen extends StatelessWidget {
  const HistoryPinjamanScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryPinjamanBloc>(
      create: (context) => HistoryPinjamanBloc(
        HistoryPinjamanState(
          historyPinjamanModelObj: HistoryPinjamanModel(),
        ),
      )..add(HistoryPinjamanInitialEvent()),
      child: const HistoryPinjamanScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeaderRow(context),
              SizedBox(height: 4.h),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_histori_pinjaman".tr,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 18.h,
                    right: 18.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _buildLoanList(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildNavigationBar(context),
      ),
    );
  }

  Widget _buildLoanList(BuildContext context) {
    return BlocSelector<
        HistoryPinjamanBloc,
        HistoryPinjamanState,
        HistoryPinjamanModel?>(
      selector: (state) => state.historyPinjamanModelObj,
      builder: (context, historyPinjamanModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 24.h,
            );
          },
          itemCount: historyPinjamanModelObj?.loanlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            LoanlistItemModel model =
                historyPinjamanModelObj?.loanlistItemList[index] ??
                    LoanlistItemModel();
            return LoanlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

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
          Text(
            "lbl_kembali".tr,
            style: theme.textTheme.titleSmall,
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
        ],
      ),
    );
  }

  Widget _buildHeaderRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
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
}
