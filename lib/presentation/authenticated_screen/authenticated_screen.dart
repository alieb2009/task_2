import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '/theme/custom_button_style.dart';
import '/widgets/custom_elevated_button.dart';
import '../../core/utils/image_constant.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'controller/authenticated_controller.dart'; // ignore_for_file: must_be_immutable

class AuthenticatedScreen extends GetWidget<AuthenticatedController> {
  const AuthenticatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true, // Allows screen to adjust when the keyboard is visible
        body: SingleChildScrollView( // Makes the screen scrollable
          child: SizedBox(
            width: 392.h,
            child: Column(
              children: [
                SizedBox(height: 20.v),
                _buildImageSection(),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Verification Code",
                          style: CustomTextStyles.titleLargeCabinPrimaryContainer,
                        ),
                        TextSpan(
                          text: "\n".tr,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        TextSpan(
                          text: "We have sent the verification code to your email address",
                          style: CustomTextStyles.bodyLargeBlack900,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 76.v),
                _buildOtpSection(), // OTP Section (PIN Code input)
                SizedBox(height: 74.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgback,
                height: 22.v,
                width: 22.h,
                margin: EdgeInsets.only(right: 8.h, left: 15.h),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 40.h, right: 32.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle5,
                    height: 250.v,
                    width: 220.h,
                    margin: EdgeInsets.only(right: 8.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOtpSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(left: 40.h, right: 32.h),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 6.h, right: 20.h),
                child: Obx(
                      () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              Text(
                "03:00",
                style: CustomTextStyles.bodyLargeMohamedamerEBNELNILE,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    onTapTxtSendAgain();
                  },
                  child: Text(
                    "Send again",
                    style: CustomTextStyles.bodyMediumMohamedamerEBNELNILEPrimaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Method to handle resend OTP action
  void onTapTxtSendAgain() {
    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
      ),
    );
  }

  /// Method to handle successful OTP entry and proceed
  void onTapNext() {
    // You can navigate to the next screen or show a bottom sheet
    // Get.bottomSheet(SuccessBottomsheet(Get.put(SuccessController())), isScrollControlled: true);
  }
}
