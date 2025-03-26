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
