import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sign_up_model.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj.
class SignUpController extends GetxController {
  TextEditingController usernameInputController = TextEditingController();
  TextEditingController emailInputController = TextEditingController();
  TextEditingController mobileNumberInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  TextEditingController confirmPasswordInputController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;
  Rx<bool> isShowPassword = true.obs;
  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    usernameInputController.dispose();
    emailInputController.dispose();
    mobileNumberInputController.dispose();
    passwordInputController.dispose();
    confirmPasswordInputController.dispose();
  }
}
// TODO Implement this library.