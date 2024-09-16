import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/login_controller.dart'; // ignore_for_file: must_be_immutable

class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true, // Allows the screen to adjust when the keyboard appears
        body: Form(
          key: _formKey,
          child: SingleChildScrollView( // Wrap the content in SingleChildScrollView
            child: Column(
              children: [
                SizedBox(height: 6.v),
                _buildEmailStack(),
                _buildEmailRow(),
                SizedBox(height: 14.v),
                _buildMobileNumberColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInput() {
    return CustomTextFormField(
      controller: controller.emailInputController,
      hintText: "email",
      textInputType: TextInputType.emailAddress,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 15.v, 15.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgThumbsUp,
          height: 20.v,
          width: 20.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 50.v,
      ),
      validator: (value) {
        if (value == null || !isValidEmail(value, isRequired: true)) {
          return "please enter valid email";
        }
        return null;
      },
      contentPadding: EdgeInsets.only(
        left: 12.h,
        top: 10.v,
        bottom: 10.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 30.h,
        bottom: 6.v,
      ),
      child: Row(
        children: [
          Expanded(child: _buildEmailInput()), // Wrap with Expanded to fit within the row
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailStack() {
    return Container(
      height: 450.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5,
            height: 450.v,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberInput() {
    return CustomTextFormField(
      controller: controller.mobileNumberInputController,
      hintText: "mobile number",
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "please enter valid phone number";
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordInput() {
    return CustomTextFormField(
      suffix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 15.v, 15.h, 15.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 20.v,
          width: 20.h,
        ),
      ),
      controller: controller.passwordInputController,
      hintText: "password",
      hintstyle: CustomTextStyles.titleMediumReadexProGreen20001,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || !isValidPassword(value, isRequired: true)) {
          return "please enter valid password";
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomOutlinedButton(
      buttonstyle: CustomButtonStyles.greenbutton,
      text: "Log in",
      buttonTextStyle: TextThemes.textTheme(ColorSchemes.lightCodeColorScheme).bodyLarge,
      onPressed: () {
        onTapLoginButton();
      },
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButton() {
    return CustomOutlinedButton(
      text: "create new account",
      buttonTextStyle: TextThemes.textTheme(ColorSchemes.lightCodeColorScheme).bodyLarge,
      buttonstyle: CustomButtonStyles.outlineGreenTL18,
      onPressed: () {
        onTapCreateAccountButton();
      },
    );
  }

  /// Section Widget
  Widget _buildMobileNumberColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 38.h,
        right: 32.h,
      ),
      child: Column(
        children: [
          _buildMobileNumberInput(),
          SizedBox(height: 20.v),
          _buildPasswordInput(),
          SizedBox(height: 20.v),
          _buildLoginButton(),
          SizedBox(height: 8.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 8.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      margin: EdgeInsets.fromLTRB(0.h, 0.v, 2.h, 0.v),
                      imagePath: ImageConstant.imgCheckmark,
                      height: 14.v,
                      width: 14.h,
                    ),
                    Text(
                      "remember me",
                      style: CustomTextStyles.bodyMediumCabin,
                    ),
                  ],
                ),
                Text(
                  "forgot password?",
                  style: CustomTextStyles.bodyMediumCabin,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          _buildCreateAccountButton(),
        ],
      ),
    );
  }

  /// Navigates to the FullScreen when the action is triggered.
  void onTapLoginButton() {
    // Get.toNamed(AppRoutes.fulsScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  void onTapCreateAccountButton() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
