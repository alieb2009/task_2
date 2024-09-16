import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '/core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '/theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/sign_up_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true, // Allow the screen to adjust when the keyboard appears
        body: Form(
          key: _formKey,
          child: SingleChildScrollView( // Scrollable view to avoid covering fields
            child: SizedBox(
              width: 392.h,
              child: Column(
                children: [
                  SizedBox(height: 100.v),
                  _buildUserDetailsSection(),
                  _buildConfirmationSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserDetailsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 42.h, right: 32.h),
      child: Column(
        children: [
          Container(
            height: 125.v,
            width: 140.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCircle,
                  height: 150.v,
                  width: 120.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCamera,
                  height: 45.v,
                  width: 45.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 44.v),
          _buildUsernameInput(),
          SizedBox(height: 16.v),
          _buildEmailInput(),
          SizedBox(height: 18.v),
          _buildMobileNumberInput(),
          SizedBox(height: 18.v),
          _buildPasswordInput(),
          SizedBox(height: 18.v),
          _buildConfirmPasswordInput(),
          SizedBox(height: 18.v),
          _buildReferralCode(), // Referral code input field
        ],
      ),
    );
  }

  Widget _buildUsernameInput() {
    return CustomTextFormField(
      controller: controller.usernameInputController,
      hintText: "User Name",
      hintstyle: CustomTextStyles.titleMediumCairoGreen20001,
      validator: (value) {
        if (isText(value)) {
          return "please enter valid text";
        }
        return null;
      },
    );
  }

  Widget _buildEmailInput() {
    return CustomTextFormField(
      controller: controller.emailInputController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 14.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgThumbsUp,
          height: 16.v,
          width: 14.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 42.v,
      ),
      validator: (value) {
        if (value == null || !isValidEmail(value, isRequired: true)) {
          return "please enter a valid email";
        }
        return null;
      },
    );
  }

  Widget _buildMobileNumberInput() {
    return CustomTextFormField(
      controller: controller.mobileNumberInputController,
      hintText: "Whatsapp Mobile number",
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "please enter a valid phone number";
        }
        return null;
      },
    );
  }

  Widget _buildReferralCode() {
    return CustomTextFormField(
      //controller: controller.referralCodeInputController,
      hintText: "Referral code (optional)",
      textInputType: TextInputType.text, // Adjusted to text input for alphanumeric codes
    );
  }

  Widget _buildPasswordInput() {
    return Obx(
          () => CustomTextFormField(
        controller: controller.passwordInputController,
        hintText: "Password",
        hintstyle: CustomTextStyles.titleMediumCairoGreen20001,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 10.v, 12.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 18.v,
              width: 20.h,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 42.v,
        ),
        validator: (value) {
          if (value == null || !isValidPassword(value, isRequired: true)) {
            return "please_enter_valid_password";
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 6.v),
      ),
    );
  }

  Widget _buildConfirmPasswordInput() {
    return Obx(
          () => CustomTextFormField(
        controller: controller.confirmPasswordInputController,
        hintText: "Confirm password",
        hintstyle: CustomTextStyles.titleMediumCairoGreen20001,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(30.h, 10.v, 12.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 18.v,
              width: 20.h,
            ),
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 42.v,
        ),
        validator: (value) {
          if (value == null || !isValidPassword(value, isRequired: true)) {
            return "Please enter a valid password";
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 12.h, top: 6.v, bottom: 6.v),
      ),
    );
  }

  Widget _buildConfirmationSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 42.h, right: 32.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 46.v),
          _buildSignUpButton(),
          SizedBox(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.maxFinite,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.loginScreen);
                        },
                        child: Text(
                          " Log in",
                          style: CustomTextStyles.bodyMediumCabin,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return CustomOutlinedButton(
      buttonstyle: CustomButtonStyles.greenbutton,
      text: "Sign Up",
      onPressed: () {
        onTapSignUpButton();
      },
    );
  }

  void onTapSignUpButton() {
    Get.toNamed(AppRoutes.authenticatedScreen);
  }
}
