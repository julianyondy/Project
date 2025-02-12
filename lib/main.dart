import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart'; // Import Sizer package
import 'core/app_export.dart'; // Import custom utilities

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  ]).then((value) {
    PrefUtils().init();
    runApp(const MyApp());
  });
}

// Function to map theme preference string to ThemeData
ThemeData _mapTheme(String theme) {
  switch (theme) {
    case 'dark':
      return ThemeData.dark();
    case 'light':
      return ThemeData.light();
    default:
      return ThemeData.light();
  }
}

// ThemeBloc class for managing theme state
class ThemeBloc extends Cubit<ThemeState> {
  ThemeBloc(super.initialState);

  void updateTheme(ThemeData theme) {
    emit(ThemeState(themeType: theme));
  }
}

// ThemeState class for holding theme data
class ThemeState {
  final ThemeData themeType;
  ThemeState({required this.themeType});
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return BlocProvider(
          create: (context) => ThemeBloc(
            ThemeState(
              themeType: _mapTheme(PrefUtils().getThemeData() ?? 'light'),
            ),
          ),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                theme: state.themeType,
                title: 'koperasi_lumbung_makmur',
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaler: const TextScaler.linear(1.0),
                    ),
                    child: child!,
                  );
                },
                navigatorKey: NavigatorService.navigatorKey,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: const [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate
                ],
                supportedLocales: const [
                  Locale('en', ''), // Supported locales
                ],
                initialRoute: AppRoutes.initialRoute,
                routes: AppRoutes.routes,
              );
            },
          ),
        );
      },
    );
  }
}
