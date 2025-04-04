```text
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../app_theme.dart';
import '../app_utils.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(6.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withValues(
            ),
            alpha: 0.07,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
            ),
          ),
        ],
      );

  static BoxDecoration get fillPrimaryTL6 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        color: appTheme.lightGreen50,
        borderRadius: BorderRadius.circular(16.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.lightGreen50.withValues(
            ),
            alpha: 0.11,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
            ),
          ),
        ],
      );

  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: appTheme.red600,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: appTheme.blueA400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGrayTL22 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: appTheme.gray900,
          width: 1.h,
        ),
      );
  static BoxDecoration get none => BoxDecoration();
}
```