import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import 'bloc/produk_bloc.dart';
import 'models/productgrid_item_model.dart';
import 'models/produk_model.dart';
import 'widgets/productgrid_item_widget.dart';

class ProdukScreen extends StatelessWidget {
  const ProdukScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<ProdukBloc>(
      create: (context) => ProdukBloc(ProdukState(
        produkModelObj: ProdukModel(),
      ))
        ..add(ProdukInitialEvent()),
      child: const ProdukScreen(),
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
                    left: 8.h,
                    top: 18.h,
                    right: 8.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeaderSection(context),
                      SizedBox(height: 66.h),
                      _buildProductGrid(context)
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
  Widget _buildHeaderSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 10.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapRowpolygonone(context);
              },
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
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            "lbl_produk".tr,
            style: theme.textTheme.headlineLarge,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductGrid(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 26.h),
        child: BlocSelector<ProdukBloc, ProdukState, ProdukModel?>(
          selector: (state) => state.produkModelObj,
          builder: (context, produkModelObj) {
            return ResponsiveGridListBuilder(
              minItemWidth: 1,
              minItemsPerRow: 2,
              maxItemsPerRow: 2,
              horizontalGridSpacing: 18.h,
              verticalGridSpacing: 18.h,
              builder: (context, items) => ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                children: items,
              ),
              gridItems: List.generate(
                produkModelObj?.productgridItemList.length ?? 0,
                (index) {
                  ProductgridItemModel model =
                      produkModelObj?.productgridItemList[index] ??
                          ProductgridItemModel();
                  return ProductgridItemWidget(
                    model,
                  );
                },
              ),
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
            radius: BorderRadius.circular(
              1.h,
            ),
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
          Container(
            height: 14.h,
            width: 14.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the homePageScrollScreen when the action is triggered.
  onTapRowpolygonone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScrollScreen,
    );
  }
}
