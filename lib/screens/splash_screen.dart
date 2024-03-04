import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lafla/core/utils/app_export.dart';
import 'package:lafla/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    // Start the timer when the widget is created
    Timer(const Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray900,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse15,
                height: 96.v,
                width: 279.h,
              ),
              SizedBox(height: 40.v),
              Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.blueA200,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
              ),
              SizedBox(height: 41.v),
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.blueA200,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              SizedBox(height: 41.v),
              Container(
                height: 6.adaptSize,
                width: 6.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.blueA200,
                  borderRadius: BorderRadius.circular(
                    3.h,
                  ),
                ),
              ),
              SizedBox(height: 72.v),
              CustomImageView(
                imagePath: ImageConstant.imgWhatsappImage20240302,
                height: 201.v,
                width: 306.h,
              ),
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgLllllloooooooo1,
                height: 150.adaptSize,
                width: 150.adaptSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
