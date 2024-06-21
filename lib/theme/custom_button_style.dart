import 'package:flutter/material.dart';
import '../core/app_export.dart';
export 'package:get/get.dart';


class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillOnPrimary => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onPrimary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.h),
    ),
  );
  static ButtonStyle get greenbutton => ElevatedButton.styleFrom(
    backgroundColor: appTheme.green100,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.h),
    ),
  );

  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray200,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.h),
    ),
    shadowColor: appTheme.black900.withOpacity(0.3),
    elevation: 1,
  );

  static ButtonStyle get outlineBlueGray => OutlinedButton.styleFrom(
    backgroundColor: appTheme.gray5001,
    side: BorderSide(
      color: appTheme.blueGray100,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.h),
    ),
  );

  static ButtonStyle get outlineGreenTL18 => OutlinedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary.withOpacity(0.3),
    side: BorderSide(
      color: appTheme.green20001,
      width: 2,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.h),
    ),
  );

  static ButtonStyle get none => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
  );
}
