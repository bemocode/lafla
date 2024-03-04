import 'package:flutter/material.dart';
import 'package:lafla/core/utils/app_export.dart';

class AppDecoration {
  // Bg decorations
  static BoxDecoration get bg => BoxDecoration(
        color: appTheme.gray50,
      );

  // Fill decorations
  static BoxDecoration get fillBlack900a5 => BoxDecoration(
        color: appTheme.black900A5.withOpacity(0.1),
      );
  static BoxDecoration get fillBlackA => BoxDecoration(
        color: appTheme.black900A5.withOpacity(0.4),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToOnPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.07),
          end: Alignment(0.5, 1.06),
          colors: [
            appTheme.black90099,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToBlackA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.06),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onError.withOpacity(0),
            appTheme.black900A5,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get outlineAmber => BoxDecoration(
        border: Border.all(
          color: appTheme.amber200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray50,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnError => BoxDecoration();
  static BoxDecoration get outlinePink => BoxDecoration(
        border: Border.all(
          color: appTheme.pink100,
          width: 1.h,
        ),
      );

  // Primary decorations
  static BoxDecoration get primary => BoxDecoration(
        color: appTheme.gray900,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder78 => BorderRadius.circular(
        78.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL14 => BorderRadius.vertical(
        bottom: Radius.circular(14.h),
      );
  static BorderRadius get customBorderBL32 => BorderRadius.vertical(
        bottom: Radius.circular(32.h),
      );
  static BorderRadius get customBorderTL12 => BorderRadius.only(
        topLeft: Radius.circular(12.h),
        topRight: Radius.circular(12.h),
        bottomLeft: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL14 => BorderRadius.vertical(
        top: Radius.circular(14.h),
      );
  static BorderRadius get customBorderTL16 => BorderRadius.only(
        topLeft: Radius.circular(16.h),
        topRight: Radius.circular(16.h),
        bottomLeft: Radius.circular(16.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
