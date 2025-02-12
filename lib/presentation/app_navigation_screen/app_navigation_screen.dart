import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../calendar_container_dialog/calendar_container_dialog.dart';
import '../simpanan_scroll_bottomsheet/simpanan_scroll_bottomsheet.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: const AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: const AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildHeader(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: _buildScreenList(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader() {
    return Container(
      decoration: const BoxDecoration(color: Color(0XFFFFFFFF)),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              "App Navigation",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0XFF000000),
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "Check your app's UI from the below demo screens of your app.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0XFF888888),
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Divider(
            height: 1.h,
            thickness: 1.h,
            color: const Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  Widget _buildScreenList(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0XFFFFFFFF)),
      child: Column(
        children: [
          _buildScreenTitle(
            context,
            screenTitle: "Sign Up",
            onTapScreenTitle: () => onTapScreenTitle(AppRoutes.signUpScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Sign In",
            onTapScreenTitle: () => onTapScreenTitle(AppRoutes.signInScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Approval",
            onTapScreenTitle: () => onTapScreenTitle(AppRoutes.approvalScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Pop Up Approval",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.popUpApprovalScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Simpanan Wajib",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.simpananWajibScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Home Page Scroll",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.homePageScrollScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Pinjaman",
            onTapScreenTitle: () => onTapScreenTitle(AppRoutes.pinjamanScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Pop Up Simpanan Wajib",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.popUpSimpananWajibScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Simpanan Scroll - BottomSheet",
            onTapScreenTitle: () => onTapBottomSheetTitle(
              context,
              SimpananScrollBottomsheet.builder(context),
            ),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Pop Up Simpanan Pokok",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.popUpSimpananPokokScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Simpanan Pokok",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.simpananPokokScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Calendar container - Dialog",
            onTapScreenTitle: () => onTapDialogTitle(
              context,
              CalendarContainerDialog.builder(context),
            ),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Produk",
            onTapScreenTitle: () => onTapScreenTitle(AppRoutes.produkScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "History Pinjaman",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.historyPinjamanScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "History Pembelian",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.historyPembelianScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Pop Up Simpanan Sukarela",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.popUpSimpananSukarelaScreen),
          ),
          _buildScreenTitle(
            context,
            screenTitle: "Simpanan Sukarela",
            onTapScreenTitle: () =>
                onTapScreenTitle(AppRoutes.simpananSukarelaScreen),
          ),
        ],
      ),
    );
  }

  void onTapBottomSheetTitle(BuildContext context, Widget className) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  void onTapDialogTitle(BuildContext context, Widget className) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: const BoxDecoration(color: Color(0XFFFFFFFF)),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: const Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
