import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'base_button.dart';

class CustomOutlinedButton extends BaseButton {
  CustomOutlinedButton({
    Key? key,
    this.decoration,
    this.lefticon,
    this.righticon,
    this.label,
    VoidCallback? onPressed,
    ButtonStyle? buttonstyle,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    Alignment? alignment,
    double? height,
    double? width,
    EdgeInsets? margin,
    required String text,
  }) : super(
    text: text,
    onPressed: onPressed,
    buttonStyle: buttonstyle,
    isDisabled: isDisabled,
    buttonTextStyle: buttonTextStyle,
    height: height,
    alignment: alignment,
    width: width,
    margin: margin,
  );

  final BoxDecoration? decoration;
  final Widget? lefticon;
  final Widget? righticon;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: buildOutlinedButtonWidget,
    )
        : buildOutlinedButtonWidget;
  }

  Widget get buildOutlinedButtonWidget => Container(
    height: this.height ?? 38.v,
    width: this.width ?? double.maxFinite,
    margin: margin,
    decoration: decoration,
    child: OutlinedButton(
      style: buttonStyle,
      onPressed: isDisabled ?? false ? null : onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          lefticon ?? const SizedBox.shrink(),
          Text(
            text,
            style: buttonTextStyle ?? theme.textTheme.bodyLarge,
          ),
          righticon ?? const SizedBox.shrink(),
        ],
      ),
    ),
  );
}
