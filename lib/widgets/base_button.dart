import 'package:flutter/material.dart';
import '../core/app_export.dart';

class BaseButton extends StatelessWidget {
  BaseButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.buttonTextStyle,
    this.isDisabled,
    this.height,
    this.width,
    this.margin,
    this.alignment,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final TextStyle? buttonTextStyle;
  final bool? isDisabled;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: buildButtonWidget,
    )
        : buildButtonWidget;
  }

  Widget get buildButtonWidget => Container(
    height: height ?? 38.v,
    width: width ?? double.maxFinite,
    margin: margin,
    child: OutlinedButton(
      style: buttonStyle,
      onPressed: isDisabled ?? false ? null : onPressed ?? () {},
      child: Text(
        text,
        style: buttonTextStyle ?? theme.textTheme.bodyLarge,
      ),
    ),
  );
}
