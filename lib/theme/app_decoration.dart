import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );
  static BoxDecoration get fillWhiteAE => BoxDecoration(
    color: appTheme.whiteA700E5,
  );

  // Gradient decorations
  static BoxDecoration get gradientPrimaryToGrayF => BoxDecoration(
    border: Border.all(
      color: appTheme.black900,
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        theme.colorScheme.primary.withOpacity(0.5),
        appTheme.gray1007f
      ],
    ),
  );

  // Light decorations
  static BoxDecoration get lightPrimary => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.3),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 1),
      ),
    ],
  );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: appTheme.gray50,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.3),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 1),
      ),
    ],
  );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
    color: appTheme.whiteA700E5,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withOpacity(0.5),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
    top: Radius.circular(20.h),
  );

  // Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(20.h);
  static BorderRadius get roundedBorder4 => BorderRadius.circular(4.h);
  static BorderRadius get roundedBorder52 => BorderRadius.circular(52.h);
}
