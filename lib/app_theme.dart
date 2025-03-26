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

  // Headline style
  static TextStyle get headlineLargeArchivo => theme.textTheme.headlineLarge!.archivo;

  // Label text style
  static TextStyle get labelLargeArchivoPrimary => theme.textTheme.labelLarge!.archivo.copyWith(color: theme.colorScheme.primary);
  static TextStyle get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(color: appThemeColors.gray500);
  static TextStyle get labelLargeManrope => theme.textTheme.labelLarge!.manrope.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w500);

  // Manrope text style
  static TextStyle get manropeGray900 => TextStyle(color: appThemeColors.gray900, fontWeight: FontWeight.w400).manrope;

  // Title text style
  static TextStyle get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(color: appThemeColors.gray900);
  static TextStyle get titleLargeInterGray900 => theme.textTheme.titleLarge!.inter.copyWith(color: appThemeColors.gray900, fontWeight: FontWeight.w400);
  static TextStyle get titleLargeManropeGray900 => theme.textTheme.titleLarge!.manrope.copyWith(color: appThemeColors.gray900, fontWeight: FontWeight.w400);
  static TextStyle get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(color: theme.colorScheme.primary);
  static TextStyle get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(color: appThemeColors.whiteA700, fontWeight: FontWeight.w600);

  static TextStyle get titleMediumArchivoBluegray500 => theme.textTheme.titleMedium!.archivo.copyWith(color: appThemeColors.blueGray500, fontWeight: FontWeight.w600);
  static TextStyle get titleMediumArchivoBluegray900 => theme.textTheme.titleMedium!.archivo.copyWith(color: appThemeColors.blueGray900);
  static TextStyle get titleMediumArchivoGray900 => theme.textTheme.titleMedium!.archivo.copyWith(color: appThemeColors.gray900, fontWeight: FontWeight.w600);
  static TextStyle get titleMediumArchivoGray90018 => theme.textTheme.titleMedium!.archivo.copyWith(color: appThemeColors.gray900, fontSize: 18);
  static TextStyle get titleMediumArchivoPrimary => theme.textTheme.titleMedium!.archivo.copyWith(color: theme.colorScheme.primary, fontSize: 18);
  static TextStyle get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(color: appThemeColors.gray900, fontSize: 18);
  static TextStyle get titleMediumGray9001 => theme.textTheme.titleMedium!.copyWith(color: appThemeColors.gray900);
  static TextStyle get titleMediumGreen900 => theme.textTheme.titleMedium!.copyWith(color: appThemeColors.green900, fontSize: 18);

  static TextStyle get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(color: appThemeColors.blueGray900, fontWeight: FontWeight.w500);
  static TextStyle get titleSmallBluegray900SemiBold => theme.textTheme.titleSmall!.copyWith(color: appThemeColors.blueGray900, fontWeight: FontWeight.w600);
  static TextStyle get titleSmallGreen800 => theme.textTheme.titleSmall!.copyWith(color: appThemeColors.green800, fontWeight: FontWeight.w500);
  static TextStyle get titleSmallInter => theme.textTheme.titleSmall!.inter;
  static TextStyle get titleSmallInterBluegray900 => theme.textTheme.titleSmall!.inter.copyWith(color: appThemeColors.blueGray900);
  static TextStyle get titleSmallInterBluegray900Medium => theme.textTheme.titleSmall!.inter.copyWith(color: appThemeColors.blueGray900, fontWeight: FontWeight.w500);
  static TextStyle get titleSmallInterGray700 => theme.textTheme.titleSmall!.inter.copyWith(color: appThemeColors.gray700, fontWeight: FontWeight.w500);
  static TextStyle get titleSmallInterPink300 => theme.textTheme.titleSmall!.inter.copyWith(color: appThemeColors.pink300);
  static TextStyle get titleSmallInterPink3001 => theme.textTheme.titleSmall!.inter.copyWith(color: appThemeColors.pink300);
  static TextStyle get titleSmallInterPrimary => theme.textTheme.titleSmall!.inter.copyWith(color: theme.colorScheme.primary);
  static TextStyle get titleSmallInterPrimaryContainer => theme.textTheme.titleSmall!.inter.copyWith(color: theme.colorScheme.primaryContainer);
  static TextStyle get titleSmallInterPrimary1 => theme.textTheme.titleSmall!.inter.copyWith(color: theme.colorScheme.primary);
  static TextStyle get titleSmallManrope => theme.textTheme.titleSmall!.manrope;
  static TextStyle get titleSmallManropeBluegray900 => theme.textTheme.titleSmall!.manrope.copyWith(color: appThemeColors.blueGray900);
  static TextStyle get titleSmallManropeSemiBold => theme.textTheme.titleSmall!.manrope.copyWith(fontWeight: FontWeight.w600);
  static TextStyle get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primary);
}

class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    "lightCode": LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    "lightCode": ColorSchemes.lightCodeColorScheme
  };

  void changeTheme(String newTheme) {
    appTheme = newTheme;
  }

  LightCodeColors getThemeColors() {
    return _supportedCustomColor[appTheme] ?? LightCodeColors();
  }

  ThemeData getThemeData() {
    var colorScheme = _supportedColorScheme[appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          elevation: 0,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: appThemeColors.whiteA700,
          side: BorderSide(color: colorScheme.primary, width: 1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(color: appThemeColors.gray30001, width: 1),
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appThemeColors.gray300,
      ),
    );
  }

  LightCodeColors themeColor() => getThemeColors();
  ThemeData themeData() => getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(color: appThemeColors.gray900, fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w400),
        bodyMedium: TextStyle(color: appThemeColors.gray900, fontSize: 14, fontFamily: 'Inter', fontWeight: FontWeight.w400),
        bodySmall: TextStyle(color: appThemeColors.gray700, fontSize: 10, fontFamily: 'Inter', fontWeight: FontWeight.w400),
        headlineLarge: TextStyle(color: appThemeColors.gray900, fontSize: 32, fontFamily: 'Manrope', fontWeight: FontWeight.w700),
        headlineSmall: TextStyle(color: appThemeColors.gray900, fontSize: 24, fontFamily: 'Archivo', fontWeight: FontWeight.w700),
        labelLarge: TextStyle(color: appThemeColors.gray900, fontSize: 12, fontFamily: 'Inter', fontWeight: FontWeight.w700),
        labelMedium: TextStyle(color: colorScheme.primary, fontSize: 10, fontFamily: 'Inter', fontWeight: FontWeight.w700),
        titleLarge: TextStyle(color: appThemeColors.blueGray900, fontSize: 20, fontFamily: 'Archivo', fontWeight: FontWeight.w700),
        titleMedium: TextStyle(color: appThemeColors.blueGray80001, fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.w700),
        titleSmall: TextStyle(color: appThemeColors.gray900, fontSize: 14, fontFamily: 'Archivo', fontWeight: FontWeight.w700),
      );
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: const Color(0XFF2DBB09),
    primaryContainer: const Color(0XFF222730),
    secondaryContainer: const Color(0XFFBF7BC0),
    errorContainer: const Color(0XFF166DB0),
    onError: const Color(0XFF9095A1),
    onErrorContainer: const Color(0X1E120F28),
    onPrimary: const Color(0x0C071F01),
    onPrimaryContainer: const Color(0XFF97F97E),
  );
}

class LightCodeColors {
  // Black
  Color get black900 => const Color(0XFF092502);
  Color get black90001 => const Color(0XFF000000);
  // Blue
  Color get blue200 => const Color(0XFF9AB8FC);
  Color get blue400 => const Color(0XFF379AE6);
  Color get blueA200 => const Color(0XFF578AEF);
  Color get blueA400 => const Color(0XFF1877F2);
  // BlueGray
  Color get blueGray100 => const Color(0XFFCFD2DA);
  Color get blueGray10001 => const Color(0XFFD9D9D9);
  Color get blueGray500 => const Color(0XFF6F7787);
  Color get blueGray800 => const Color(0XFF3A3D55);
  Color get blueGray80001 => const Color(0XFF424856);
  Color get blueGray900 => const Color(0XFF323743);
  Color get blueGray90001 => const Color(0XFF362C37);
  // DeepOrange
  Color get deepOrangeA200 => const Color(0XFFF37135);
  Color get deepOrangeA400 => const Color(0XFFFF1500);
  // Gray
  Color get gray100 => const Color(0XFFF3F4F6);
  Color get gray10001 => const Color(0XFFF1F8FD);
  Color get gray300 => const Color(0XFFDEE1E6);
  Color get gray30001 => const Color(0XFFE3E4E8);
  Color get gray400 => const Color(0XFFBDC1CA);
  Color get gray50 => const Color(0XFFF8F9FA);
  Color get gray500 => const Color(0XFF8E949F);
  Color get gray5001 => const Color(0XFFFAFAFB);
  Color get gray700 => const Color(0XFF565D6D);
  Color get gray900 => const Color(0XFF171A1F);
  Color get gray90001 => const Color(0XFF1E2128);
  // Green
  Color get green800 => const Color(0XFF239207);
  Color get green80001 => const Color(0XFF27A688);
  Color get green900 => const Color(0XFF096D2A);
  Color get green90001 => const Color(0XFF145504);
  Color get greenA400 => const Color(0XFF18EC5F);
  Color get greenA700 => const Color(0XFF8FBC49);
  // LightGreen
  Color get lightGreen50 => const Color(0XFFEEFEEA);
  Color get lightGreen5001 => const Color(0XFFEDFEF2);
  Color get lightGreenA100 => const Color(0XFFB5FBA3);
  // Lime
  Color get lime700 => const Color(0XFFCCA72C);
  // Pink
  Color get pink300 => const Color(0XFFE8618C);
  // Red
  Color get red600 => const Color(0XFFDB4437);
  // White
  Color get whiteA700 => const Color(0XFFFFFFFF);
  // Yellow
  Color get yellow700 => const Color(0XFFF3C63F);
  Color get yellow70001 => const Color(0XFFEFC52E);
}



class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: const Color(0XFFFF1500), // Assuming deepOrangeA400 is Color(0XFFFF1500)
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: const Color(0XFFF8F9FA), // Assuming gray50 is Color(0XFFF8F9FA)
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: const Color(0XFFF3F4F6), // Assuming gray100 is Color(0XFFF3F4F6)
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: const Color(0XFFFAFAFB), // Assuming gray5001 is Color(0XFFFAFAFB)
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: const Color(0XFF8FBC49), // Assuming greenA700 is Color(0XFF8FBC49)
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: const Color(0XFFEEFEEA), // Assuming lightGreen50 is Color(0XFFEEFEEA)
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
        border: Border.all(
          color: const Color(0XFFDEE1E6), // Assuming gray300 is Color(0XFFDEE1E6)
          width: 1,
        ),
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        border: Border.all(
          color: const Color(0XFFF3F4F6), // Assuming gray100 is Color(0XFFF3F4F6)
          width: 1,
        ),
      );
  static BoxDecoration get outlineGray1001 => BoxDecoration(
        color: const Color(0XFFFFFFFF).withOpacity(0.75), // Assuming whiteA700 is Color(0XFFFFFFFF)
        border: Border.all(
          color: const Color(0XFFF3F4F6), // Assuming gray100 is Color(0XFFF3F4F6)
          width: 1,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        border: Border.all(
          color: const Color(0XFFDEE1E6), // Assuming gray300 is Color(0XFFDEE1E6)
          width: 1,
        ),
      );
  static BoxDecoration get outlineGray400 => BoxDecoration(
        color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
        border: Border.all(
          color: const Color(0XFFBDC1CA), // Assuming gray400 is Color(0XFFBDC1CA)
          width: 1,
        ),
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF171A1F).withOpacity(0.07), // Assuming gray900 is Color(0XFF171A1F)
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
      );
  static BoxDecoration get outlineGray90001 => BoxDecoration(
        color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
        border: Border.all(
          color: const Color(0XFF1E2128), // Assuming gray90001 is Color(0XFF1E2128)
          width: 1,
        ),
      );
  static BoxDecoration get outlineGray9001 => BoxDecoration(
        color: const Color(0XFFEEFEEA), // Assuming lightGreen50 is Color(0XFFEEFEEA)
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF171A1F).withOpacity(0.07), // Assuming gray900 is Color(0XFF171A1F)
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
      );
  static BoxDecoration get outlineGray9002 => BoxDecoration(
        color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
        border: Border.all(
          color: const Color(0XFF171A1F), // Assuming gray900 is Color(0XFF171A1F)
          width: 1,
        ),
      );
  static BoxDecoration get outlineGray9003 => BoxDecoration(
        color: const Color(0XFFF3F4F6), // Assuming gray100 is Color(0XFFF3F4F6)
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF171A1F).withOpacity(0.07), // Assuming gray900 is Color(0XFF171A1F)
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
      );
  static BoxDecoration get outlineGray9004 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF171A1F).withOpacity(0.07), // Assuming gray900 is Color(0XFF171A1F)
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
      );
  static BoxDecoration get outlineGray9005 => BoxDecoration(
        color: const Color(0XFFFFFFFF).withOpacity(0.7), // Assuming whiteA700 is Color(0XFFFFFFFF)
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF171A1F).withOpacity(0.09), // Assuming gray900 is Color(0XFF171A1F)
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      );
  static BoxDecoration get outlineLightGreenA => BoxDecoration(
        border: Border.all(
          color: const Color(0XFFB5FBA3), // Assuming lightGreenA100 is Color(0XFFB5FBA3)
          width: 1,
        ),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer1 => BoxDecoration(
        color: const Color(0XFFEEFEEA), // Assuming lightGreen50 is Color(0XFFEEFEEA)
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1,
        ),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
        border: Border.all(
          color: const Color(0XFFFFFFFF), // Assuming whiteA700 is Color(0XFFFFFFFF)
          width: 1,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(20);
  static BorderRadius get circleBorder44 => BorderRadius.circular(44);
  static BorderRadius get circleBorder52 => BorderRadius.circular(52);

  // Custom borders
  static BorderRadius get customBorderTL6 => BorderRadius.vertical(
        top: Radius.circular(6),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(10);
  static BorderRadius get roundedBorder16 => BorderRadius.circular(16);
  static BorderRadius get roundedBorder2 => BorderRadius.circular(2);
  static BorderRadius get roundedBorder36 => BorderRadius.circular(36);
  static BorderRadius get roundedBorder40 => BorderRadius.circular(40);
  static BorderRadius get roundedBorder6 => BorderRadius.circular(6);
}