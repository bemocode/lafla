import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:lafla/core/utils/app_export.dart';
import 'package:lafla/widgets/custom_outlined_button.dart';
import 'package:lafla/widgets/custom_phone_number.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('90');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgWhatsappImage20240302173x375,
                    height: 173.v,
                    width: 375.h,
                    radius: BorderRadius.vertical(
                      bottom: Radius.circular(32.h),
                    ),
                  ),
                  SizedBox(height: 69.v),
                  Text(
                    "Welcome to Lafla",
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 38.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: CustomPhoneNumber(
                      country: selectedCountry,
                      controller: phoneNumberController,
                      onTap: (Country value) {
                        selectedCountry = value;
                      },
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
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
                        text: "Send",
                        buttonStyle: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          appTheme.gray900,
                        )),
                        onPressed: () {
                          Navigator.pushNamed(context, '/otp');
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.v,
                  ),
                  Container(
                    width: 272.h,
                    margin: EdgeInsets.only(
                      left: 50.h,
                      right: 51.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Read our Privacy Policy. Tap “Agree & Continue” to accept the ",
                            style: CustomTextStyles.bodyMediumff5e5f6b,
                          ),
                          TextSpan(
                            text: "Terms of Service.",
                            style: CustomTextStyles.bodyMediumff437eff.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 47.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
