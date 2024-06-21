import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../../core/app_export.dart';
import '../models/authenticated_model.dart';

/// Controller class for the AuthenticatedScreen.
/// This class manages the state of the AuthenticatedScreen, including the
/// current authenticatedModelObj.
class AuthenticatedController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<AuthenticatedModel> authenticatedModelObj = AuthenticatedModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
