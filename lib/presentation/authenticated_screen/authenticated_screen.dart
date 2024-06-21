import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '/theme/custom_button_style.dart';
import '/widgets/custom_elevated_button.dart';
import '../../core/utils/image_constant.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
// import './success_bottomsheet/controller/success_controller.dart';
// import '../success_bottomsheet/success_bottomsheet.dart';
// import './wrong_messge_dialog/controller/wrong_messge_controller.dart';
// import './wrong_messge_dialog/wrong_messge_dialog.dart';
import 'controller/authenticated_controller.dart'; // ignore_for_file: must_be_immutable
////////////////////
/////////////////


class AuthenticatedScreen extends GetWidget<AuthenticatedController> {
  const AuthenticatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 392.h,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 934.v,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        // CustomImageView(
                        //   imagePath: ImageConstant.imgCircle,
                        //   height: 204.v,
                        //   width: 90.h,
                        // ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                              _buildOtpSection(),
                              SizedBox(height: 74.v),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
                    height: 118.v,
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

  /// Displays a dialog with the [WrongMessageDialog] content.
  void onTapTxtSendAgain() {
    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        // content: WrongMessageDialog(
        //   Get.put(WrongMessageController()),
        // ),
      ),
    );
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [SuccessBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [SuccessController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.
  void onTapNext() {
    // Get.bottomSheet(
    //   SuccessBottomsheet(
    //     Get.put(SuccessController()),
    //   ),
    //   isScrollControlled: true,
    // );
  }
}
