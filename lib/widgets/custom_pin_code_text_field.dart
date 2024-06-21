import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/app_export.dart'; // ignore_for_file: must_be_immutable

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textstyle,
    this.hintstyle,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  final TextStyle? textstyle;
  final TextStyle? hintstyle;
  Function(String) onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: pinCodeTextFieldWidget,
    )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
    appContext: context,
    controller: controller,
    length: 6,
    keyboardType: TextInputType.number,
    textStyle: textstyle ?? CustomTextStyles.titleMediumInterGray600,
    hintStyle: hintstyle ?? CustomTextStyles.titleMediumInterGray600,
    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    pinTheme: PinTheme(
      fieldHeight: 38.h,
      fieldWidth: 42.h,
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(18.h),
      inactiveColor: theme.colorScheme.onError,
      activeColor: theme.colorScheme.onError,
      selectedColor: theme.colorScheme.onError,
    ),
    onChanged: (value) => onChanged(value),
    validator: validator,
  );
}
