import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/approval_screen/approval_secreen.dart';
import '../presentation/history_pembelian_screen/history_pembelian_screen.dart';
import '../presentation/history_pinjaman_screen/history_pinjaman_screen.dart';
import '../presentation/home_page_scroll_screen/home_page_scroll_screen.dart';
import '../presentation/pinjaman_screen/pinjaman_screen.dart';
import '../presentation/pop_up_approval_screen/pop_up_approval_screen.dart';
import '../presentation/pop_up_simpanan_pokok_screen/pop_up_simpanan_pokok_screen.dart';
import '../presentation/pop_up_simpanan_sukarela_screen/pop_up_simpanan_sukarela_screen.dart';
import '../presentation/pop_up_simpanan_wajib_screen/pop_up_simpanan_wajib_screen.dart';
import '../presentation/produk_screen/produk_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/simpanan_pokok_screen/simpanan_pokok_screen.dart';
import '../presentation/simpanan_sukarela_screen/simpanan_sukarela_screen.dart';
import '../presentation/simpanan_wajib_screen/simpanan_wajib_screen.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String approvalScreen = '/approval_screen';

  static const String popUpApprovalScreen = '/pop_up_approval_screen';

  static const String simpananWajibScreen = '/simpanan_wajib_screen';

  static const String homePageScrollScreen = '/home_page_scroll_screen';

  static const String pinjamanScreen = '/pinjaman_screen';

  static const String pinjamanInitialPage = '/pinjaman_initial_page';

  static const String profilePage = '/profile_page';

  static const String popUpSimpananWajibScreen =
      '/pop_up_simpanan_wajib_screen';

  static const String popUpSimpananPokokScreen =
      '/pop_up_simpanan_pokok_screen';

  static const String simpananPokokScreen = '/simpanan_pokok_screen';

  static const String produkScreen = '/produk_screen';

  static const String historyPinjamanScreen = '/history_pinjaman_screen';

  static const String historyPembelianScreen = '/history_pembelian_screen';

  static const String popUpSimpananSukarelaScreen =
      '/pop_up_simpanan_sukarela_screen';

  static const String simpananSukarelaScreen = '/simpanan_sukarela_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signUpScreen: SignUpScreen.builder,
        signInScreen: SignInScreen.builder,
        approvalScreen: ApprovalScreen.builder,
        popUpApprovalScreen: PopUpApprovalScreen.builder,
        simpananWajibScreen: SimpananWajibScreen.builder,
        homePageScrollScreen: HomePageScrollScreen.builder,
        pinjamanScreen: PinjamanScreen.builder,
        popUpSimpananWajibScreen: PopUpSimpananWajibScreen.builder,
        popUpSimpananPokokScreen: PopUpSimpananPokokScreen.builder,
        simpananPokokScreen: SimpananPokokScreen.builder,
        produkScreen: ProdukScreen.builder,
        historyPinjamanScreen: HistoryPinjamanScreen.builder,
        historyPembelianScreen: HistoryPembelianScreen.builder,
        popUpSimpananSukarelaScreen: PopUpSimpananSukarelaScreen.builder,
        simpananSukarelaScreen: SimpananSukarelaScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SignUpScreen.builder
      };
}

