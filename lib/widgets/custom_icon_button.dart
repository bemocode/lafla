import 'package:flutter/material.dart';
import 'package:lafla/core/utils/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray50,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA200,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get gradientIndigoAToIndigoA => BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA10019,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              5,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.indigoA100,
            appTheme.indigoA200,
          ],
        ),
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red600,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: appTheme.gray90002,
          width: 1.h,
        ),
      );
}
