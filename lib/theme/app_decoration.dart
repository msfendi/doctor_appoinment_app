import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Linear decorations
  static BoxDecoration get linear => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.secondaryContainer,
            theme.colorScheme.onError
          ],
        ),
      );
// Neutral decorations
  static BoxDecoration get neutral100 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.11.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray60014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
// Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
// Primary decorations
  static BoxDecoration get primary50 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get primary500 => BoxDecoration(
        color: theme.colorScheme.primary,
      );
// White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
// Custom borders
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get roundedBorder34 => BorderRadius.circular(
        34.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
