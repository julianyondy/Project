import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  final _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  final Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onErrorContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: appTheme.lightGreenA400,
          side: BorderSide(
            color: appTheme.blueGray800.withOpacity(0.4),
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          color: appTheme.gray300,
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray90001.withOpacity(0.3),
          fontSize: 16.fSize,
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 15.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 35.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 30.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 28.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 24.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 12.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 11.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 14.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF3461FD),
    primaryContainer: Color(0XFF1B1B1F),
    secondaryContainer: Color(0XFF386BF6),
    errorContainer: Color(0XFF44474F),
    onError: Color(0XFFFF4267),
    onErrorContainer: Color(0XFFFFFFFF),
    onPrimary: Color(0XFF0600B3),
    onPrimaryContainer: Color(0XFFA9A9A9),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => const Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => const Color(0XFFD9D9D9);
  Color get blueGray10001 => const Color(0XFFD6D7D7);
  Color get blueGray400 => const Color(0XFF7C8AA0);
  Color get blueGray40001 => const Color(0XFF7C8BA0);
  Color get blueGray50 => const Color(0XFFEAEFF5);
  Color get blueGray600 => const Color(0XFF61677D);
  Color get blueGray800 => const Color(0XFF3B4054);
  Color get blueGray80001 => const Color(0XFF3A4053);

  // Cyan
  Color get cyan700 => const Color(0XFF0B87AC);

  // Gray
  Color get gray300 => const Color(0XFFE3E4E8);
  Color get gray50 => const Color(0XFFF5F9FD);
  Color get gray500 => const Color(0XFFABABAB);
  Color get gray5001 => const Color(0XFFF5F9FE);
  Color get gray700 => const Color(0XFF555555);
  Color get gray900 => const Color(0XFF181D27);
  Color get gray90001 => const Color(0XFF212224);

  // Indigo
  Color get indigo200 => const Color(0XFF9DB2CE);
  Color get indigo500 => const Color(0XFF2A4ECA);

  // LightBlue
  Color get lightBlue50 => const Color(0XFFEBFBFE);

  // LightGreen
  Color get lightGreenA400 => const Color(0XFF42FF00);

  // Red
  Color get red400 => const Color(0XFFEC5865);
  Color get redA700 => const Color(0XFFFF0000);

  // White
  Color get whiteA700 => const Color(0XFFFFFDFC);
}
