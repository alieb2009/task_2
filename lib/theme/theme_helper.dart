import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  // Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  // Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  // Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme = _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(colorScheme: colorScheme, useMaterial3: true);
  }

  // Returns the theme data.
  ThemeData themeData() => _getThemeData();

  // Returns the custom colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();
}
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: colorScheme.primaryContainer.withOpacity(1),
      fontSize: 16.fSize,
      fontFamily: 'Montaga',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.green900,
      fontSize: 13.fSize,
      fontFamily: 'Montaga',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: appTheme.whiteA700,
      fontSize: 12.fSize,
      fontFamily: 'Montaga',
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      color: colorScheme.primaryContainer.withOpacity(1),
      fontSize: 32.fSize,
      fontFamily: 'Cabin',
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      color: appTheme.black900,
      fontSize: 24.fSize,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w300,
    ),
    labelLarge: TextStyle(
      color: colorScheme.errorContainer,
      fontSize: 12.fSize,
      fontFamily: 'Cabin',
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 22.fSize,
      fontFamily: 'Montaga',
      fontWeight: FontWeight.w400,
    ),
    titleMedium: TextStyle(
      color: appTheme.green20002,
      fontSize: 16.fSize,
      fontFamily: 'Cabin',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: appTheme.green20001,
      fontSize: 14.fSize,
      fontFamily: 'Cabin',
      fontWeight: FontWeight.w500,
    ),
  );
}


/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0xFFB5E5B8),
    primaryContainer: Color(0x33335014),
    secondaryContainer: Color(0xFF1E505),
    errorContainer: Color(0xFF24A240),
    onError: Color(0xFFDDDDDD),
    onPrimary: Color(0xFF0F3412),
    onPrimaryContainer: Color(0xFFFFFFFF),
    onSecondaryContainer: Color(0xFF5C6066),
  );
}


/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0xFF000000);

  // BlueGray
  Color get blueGray100 => Color(0xFFD7DDDB);
  Color get blueGray10001 => Color(0xFFD9D9D9);
  Color get blueGray200 => Color(0xFFAEB3BE);
  Color get blueGray400 => Color(0xFF888888);

  // Grayf
  Color get gray1007f => Color(0x7FF2FFF3);

  // Gray
  Color get gray400 => Color(0xFFB5B5B5);
  Color get gray50 => Color(0xFFFDFCFC);
  Color get gray5001 => Color(0xFFFAFFF8);
  Color get gray600 => Color(0xFF757575);
  Color get gray60001 => Color(0xFF647F66);

  // Green
  Color get green100 => Color(0xFFB6E5B9);
  Color get green200 => Color(0xFF97BFA0);
  Color get green20001 => Color(0xFFA3C5B0);
  Color get green20002 => Color(0xFFA2C4B0);
  Color get green900 => Color(0xFF034F14);

  // White
  Color get whiteA700 => Color(0xFFFFFDFD);

  // WhiteAE
  Color get whiteA700E5 => Color(0xFFE5FFFC);
}

