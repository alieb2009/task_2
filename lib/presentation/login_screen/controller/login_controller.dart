import 'package:flutter/material.dart';
import '../models/login_model.dart';
import '../../../core/app_export.dart';
/// A controller class for the LoginScreen.
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj.
class LoginController extends GetxController {
  TextEditingController emailInputController = TextEditingController();
  TextEditingController mobileNumberInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailInputController.dispose();
    mobileNumberInputController.dispose();
    passwordInputController.dispose();
  }
}
