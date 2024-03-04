import 'package:lafla/core/utils/app_export.dart';
import 'package:lafla/theme/custom_button_style.dart';
import 'package:lafla/widgets/custom_outlined_button.dart';
import 'package:lafla/widgets/custom_pin_code_text_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onError.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplashTwo,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage20240302173x375,
                  height: 173.v,
                  width: 375.h,
                  radius: BorderRadius.vertical(
                    bottom: Radius.circular(32.h),
                  ),
                ),
                SizedBox(
                  height: 21.v,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          onTap: () {},
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 2.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLineDivider,
                          height: 24.v,
                          width: 1.h,
                          margin: EdgeInsets.only(left: 10.h),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                Text(
                  "Welcome to Lafla",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 22.v),
                Text(
                  "Enter SMS Code",
                  style: CustomTextStyles.titleMediumBlueA200,
                ),
                SizedBox(height: 39.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: CustomPinCodeTextField(
                    textStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    context: context,
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildDone(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildDone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 50.v,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: const Alignment(0.06, 0.08),
          end: const Alignment(1, 0.9),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onError.withOpacity(1),
          ],
        ),
        corners: const Corners(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
          bottomLeft: Radius.circular(14),
          bottomRight: Radius.circular(14),
        ),
        child: CustomOutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/Home');
          },
          text: "Done",
          buttonStyle: CustomButtonStyles.outlineTL141,
        ),
      ),
    );
  }
}
