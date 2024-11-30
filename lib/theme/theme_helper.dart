import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray300,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 24.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray500,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 22.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 18.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF227DDE),
    secondaryContainer: Color(0XFF219ADE),
    errorContainer: Color(0XFF2B2E32),
    onError: Color(0XFF216DDE),
    onErrorContainer: Color(0XFFF4F9FD),
    onPrimary: Color(0XFF0B0C0C),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber500 => Color(0XFFFBBC05);
// Blue
  Color get blue300 => Color(0XFF6FAAEA);
  Color get blue50 => Color(0XFFDEEBFA);
// BlueGray
  Color get blueGray400 => Color(0XFF848B93);
  Color get blueGray700 => Color(0XFF4C5157);
// Gray
  Color get gray100 => Color(0XFFF2F4F6);
  Color get gray300 => Color(0XFFE0E2E4);
  Color get gray500 => Color(0XFF90979E);
  Color get gray60014 => Color(0X147C7C7C);
// Green
  Color get green600 => Color(0XFF2ECC71);
// Red
  Color get red50 => Color(0XFFFFEAEA);
  Color get redA200 => Color(0XFFEA5455);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
