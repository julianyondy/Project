import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../profile_page/profile_page.dart';
import 'bloc/pinjaman_bloc.dart';
import 'models/pinjaman_model.dart';
import 'pinjaman_initial_page.dart';

// ignore_for_file: must_be_immutable
class PinjamanScreen extends StatelessWidget {
  PinjamanScreen({super.key});

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  
  static Widget builder(BuildContext context) {
    return BlocProvider<PinjamanBloc>(
      create: (context) => PinjamanBloc(PinjamanState(
        pinjamanModelObj: const PinjamanModel(),
      ))
        ..add(PinjamanInitialEvent()),
      child: PinjamanScreen(),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.pinjamanInitialPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(context, routeSetting.name!),
            transitionDuration: const Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigationBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {},
      ),
    );
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.pinjamanInitialPage:
        return PinjamanInitialPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return PinjamanInitialPage.builder(context);
    }
  }
}





