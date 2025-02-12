import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  // Gray decorations
  static BoxDecoration get gray50 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      );
  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: appTheme.blueGray800.withOpacity(0.4),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray800 => BoxDecoration(
        color: appTheme.gray5001,
        border: Border.all(
          color: appTheme.blueGray800,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray8001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.blueGray800.withOpacity(0.4),
          width: 1.h,
        ),
      );
  // Primary decorations
  static BoxDecoration get primary500 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}
