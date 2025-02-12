import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get epilogue {
    return copyWith(
      fontFamily: 'Epilogue',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargePoppinsBluegray400 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get bodyLargePoppinsBluegray40001 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.blueGray40001,
      );
  static TextStyle get bodyMediumEpilogueGray90001 =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumPoppinsBluegray600 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray600,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumPoppinsBluegray80001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 14.fSize,
      );
  static TextStyle get bodyMediumPoppinsPrimary =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static TextStyle get bodySmallDMSansGray500 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  static TextStyle get bodySmallPoppinsBluegray80001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.blueGray80001,
      );
  // Headline text style
  static TextStyle get headlineLargePoppinsIndigo500 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.indigo500,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get headlineSmallPoppinsOnErrorContainer =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static TextStyle get labelLargeDMSansGray700 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeDMSansGray900 =>
      theme.textTheme.labelLarge!.dMSans.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeEpilogueGray90001 =>
      theme.textTheme.labelLarge!.epilogue.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeEpilogueGray90001Medium =>
      theme.textTheme.labelLarge!.epilogue.copyWith(
        color: appTheme.gray90001.withOpacity(0.3),
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelMediumBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get labelMediumPoppins =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        fontSize: 10.fSize,
      );
  static TextStyle get labelMediumPoppinsOnErrorContainer =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 10.fSize,
      );
  static TextStyle get labelMediumPoppinsOnErrorContainerSemiBold =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMediumRedA700 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.redA700,
      );

  // Title text style
  static TextStyle get titleLargeBluegray800 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumBluegray40001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40001,
      );
  static TextStyle get titleMediumBluegray800 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMediumBluegray80018 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static TextStyle get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleSmallDMSansGray900 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray900.withOpacity(0.8),
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallEpilogueGray90001 =>
      theme.textTheme.titleSmall!.epilogue.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get titleSmallPoppinsBlack900ExtraBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get titleSmallPoppinsOnErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w800,
      );
}
