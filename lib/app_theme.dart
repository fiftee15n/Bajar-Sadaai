import 'package:flutter/material.dart';
import '../app_utils.dart';

String appTheme = "lightCode";
LightCodeColors get appThemeColors => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

extension TextStyleExtensions on TextStyle {
  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get archivo {
    return copyWith(
      fontFamily: 'Archivo',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(fontSize: 18);
  static TextStyle get bodyLargeArchivo => theme.textTheme.bodyLarge!.archivo.copyWith(fontSize: 18);
  static TextStyle get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(color: appThemeColors.gray400);
  static TextStyle get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(color: appThemeColors.gray700);
  static TextStyle get bodyLargeGray70018 => theme.textTheme.bodyLarge!.copyWith(color: appThemeColors.gray700, fontSize: 18);
  static TextStyle get bodyLargeManrope => theme.textTheme.bodyLarge!.manrope;
  static TextStyle get bodyLargeManropeGray400 => theme.textTheme.bodyLarge!.manrope.copyWith(color: appThemeColors.gray400);
  static TextStyle get bodyLargeManropeGreen90001 => theme.textTheme.bodyLarge!.manrope.copyWith(color: appThemeColors.green90001);
  static TextStyle get bodyLargeManropeWhiteA700 => theme.textTheme.bodyLarge!.manrope.copyWith(color: appThemeColors.whiteA700);
  static TextStyle get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(color: theme.colorScheme.onError, fontSize: 18);
  static TextStyle get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(color: theme.colorScheme.primary, fontSize: 18);
  static TextStyle get bodyLargePrimary1 => theme.textTheme.bodyLarge!.copyWith(color: theme.colorScheme.primary);
  static TextStyle get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(color: appThemeColors.whiteA700);
  static TextStyle get bodyLargeWhiteA70018 => theme.textTheme.bodyLarge!.copyWith(color: appThemeColors.whiteA700, fontSize: 18);

  static TextStyle get bodyMediumArchivoBluegray900 => theme.textTheme.bodyMedium!.archivo.copyWith(color: appThemeColors.blueGray900);
  static TextStyle get bodyMediumBlue400 => theme.textTheme.bodyMedium!.copyWith(color: appThemeColors.blue400);
  static TextStyle get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(color: appThemeColors.blueGray80001);
  static TextStyle get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(color: appThemeColors.blueGray900);
  static TextStyle get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(color: appThemeColors.gray400);
  static TextStyle get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(color: appThemeColors.gray700);
  static TextStyle get bodyMediumManrope => theme.textTheme.bodyMedium!.manrope;
  static TextStyle get bodyMediumManropeBluegray900 => theme.textTheme.bodyMedium!.manrope.copyWith(color: appThemeColors.blueGray900);
  static TextStyle get bodyMediumManropeOnError => theme.textTheme.bodyMedium!.manrope.copyWith(color: theme.colorScheme.onError);
  static TextStyle get bodyMediumManropeOnError1 => theme.textTheme.bodyMedium!.manrope.copyWith(color: theme.colorScheme.onError);
  static TextStyle get bodyMediumManropeOnPrimary => theme.textTheme.bodyMedium!.manrope.copyWith(color: theme.colorScheme.onPrimary.withOpacity(0.75));
  static TextStyle get bodyMediumManrope1 => theme.textTheme.bodyMedium!.manrope;
  static TextStyle get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(color: theme.colorScheme.onError);
  static TextStyle get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(color: theme.colorScheme.primary);
  static TextStyle get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(color: appThemeColors.whiteA700);

  static TextStyle get bodySmall11 => theme.textTheme.bodySmall!.copyWith(fontSize: 11);
  static TextStyle get bodySmall12 => theme.textTheme.bodySmall!.copyWith(fontSize: 12);
  static TextStyle get bodySmallArchivoGray900 => theme.textTheme.bodySmall!.archivo.copyWith(color: appThemeColors.gray900, fontSize: 12);
  static TextStyle get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(color: appThemeColors.blueGray900, fontSize: 12);
  static TextStyle get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(color: appThemeColors.gray900, fontSize: 11);
  static TextStyle get bodySmallGray90012 => theme.textTheme.bodySmall!.copyWith(color: appThemeColors.gray900, fontSize: 12);
  static TextStyle get bodySmallGray90012_1 => theme.textTheme.bodySmall!.copyWith(color: appThemeColors.gray900, fontSize: 12);
  static TextStyle get bodySmallGreen900 => theme.textTheme.bodySmall!.copyWith(color: appThemeColors.green900, fontSize: 12);
  static TextStyle get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.onError, fontSize: 12);
  static TextStyle get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.primary, fontSize: 12);
  static TextStyle get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(color: appThemeColors.whiteA700, fontSize: 11);

}