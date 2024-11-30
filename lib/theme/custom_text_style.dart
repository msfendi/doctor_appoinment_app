import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyMediumOnPrimary =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get bodySmallBluegray400 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get bodySmallBluegray700 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
      );
// Headline text style
  static TextStyle get headlineSmallSemiBold =>
      theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
// Label text style
  static TextStyle get labelLargeAmber500SemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber500,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeBluegray400 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get labelLargeBluegray700 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static TextStyle get labelLargePrimarySemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelMediumBlue50 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blue50,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelSmallWhiteA700 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static TextStyle get titleLargeSemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumRedA200 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumWhiteA700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumWhiteA700_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static TextStyle get titleSmallBluegray700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallPrimary_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleSmallWhiteA700SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static TextStyle get titleMediumBlack900 =>
      theme.textTheme.titleMedium!.copyWith(
        color: Colors.black87,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumGray500 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumGray50016 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumGray500Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumGray600 =>
      theme.textTheme.titleMedium!.copyWith(
        color: Colors.grey.shade600,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumInterPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleMediumMedium =>
      theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumMedium16 =>
      theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static TextStyle get titleSmallAmber500 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amber500,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: Colors.black54,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallBluegray400 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static TextStyle get titleSmallErrorContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static TextStyle get titleSmallOnPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallWhiteA700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}
