import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray700.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get none => const BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child});

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                color: theme.colorScheme.onPrimary.withOpacity(0.05),
                borderRadius: BorderRadius.circular(20.h),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}

