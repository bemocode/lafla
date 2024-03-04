import 'package:flutter/material.dart';
import 'package:lafla/core/utils/size_utils.dart';
import 'package:lafla/theme/theme_helper.dart';

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyMediumBluegray40002_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumNotoSansGray300 =>
      theme.textTheme.bodyMedium!.notoSans.copyWith(
        color: appTheme.gray300,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumSFUIDisplay => theme.textTheme.bodyMedium!.sFUIDisplay;
  static get bodyMediumSFUIDisplayBlueA200 =>
      theme.textTheme.bodyMedium!.sFUIDisplay.copyWith(
        color: appTheme.blueA200,
      );
  static get bodyMediumSFUIDisplayBluegray40002 =>
      theme.textTheme.bodyMedium!.sFUIDisplay.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 13.fSize,
      );
  static get bodyMediumSFUIDisplayOnErrorContainer =>
      theme.textTheme.bodyMedium!.sFUIDisplay.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumff437eff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF437EFF),
      );
  static get bodyMediumff5e5f6b => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF5E5F6B),
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallPlusJakartaSans =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallPlusJakartaSans11 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallPlusJakartaSansGray600 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallPlusJakartaSansGreen800 =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: appTheme.green800,
      );
  static get bodySmallPlusJakartaSansOnError =>
      theme.textTheme.bodySmall!.plusJakartaSans.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallPlusJakartaSans_1 =>
      theme.textTheme.bodySmall!.plusJakartaSans;
  // Label text style
  static get labelLargePlusJakartaSansBlueA200 =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: appTheme.blueA200,
        fontSize: 12.fSize,
      );
  static get labelLargeSFUIDisplayGray900 =>
      theme.textTheme.labelLarge!.sFUIDisplay.copyWith(
        color: appTheme.gray900,
        fontSize: 12.fSize,
      );
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 10.fSize,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlueA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA200,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallNotoSansPrimaryContainer =>
      theme.textTheme.titleSmall!.notoSans.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }

  TextStyle get sFUIDisplay {
    return copyWith(
      fontFamily: 'SF UI Display',
    );
  }

  TextStyle get circularStd {
    return copyWith(
      fontFamily: 'Circular Std',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}
