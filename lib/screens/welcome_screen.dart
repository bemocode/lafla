import 'dart:async';

import 'package:lafla/core/utils/app_export.dart';
import 'package:lafla/theme/custom_button_style.dart';
import 'package:lafla/widgets/custom_outlined_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray900,
        body: SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 718.v,
                width: 351.h,
                margin: EdgeInsets.only(bottom: 50.v),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 315.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle45360x36,
                              height: 60.v,
                              width: 36.h,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                            SizedBox(height: 12.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle454,
                              height: 187.v,
                              width: 36.h,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 22.h,
                                right: 9.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildFrame(
                                    context,
                                    image: ImageConstant.imgRectangle454187x143,
                                    image1: ImageConstant.imgRectangle455,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.h,
                                      bottom: 43.v,
                                    ),
                                    child: _buildFrame(
                                      context,
                                      image:
                                          ImageConstant.imgRectangle454130x143,
                                      image1:
                                          ImageConstant.imgRectangle455187x143,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 65.v),
                            Text(
                              "Lafla Chat App",
                              style: theme.textTheme.displaySmall,
                            ),
                            SizedBox(height: 10.v),
                            Container(
                              width: 313.h,
                              margin: EdgeInsets.symmetric(horizontal: 6.h),
                              child: Text(
                                "Hello, Welcome to Lafla : Connecting the World, One Message at a Time",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:
                                    CustomTextStyles.bodyMediumOnError.copyWith(
                                  height: 1.43,
                                ),
                              ),
                            ),
                            SizedBox(height: 11.v),
                            SizedBox(
                              height: 20.v,
                              child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 4,
                                effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor:
                                      theme.colorScheme.onError.withOpacity(1),
                                  dotColor: appTheme.blue5001.withOpacity(0.6),
                                  dotHeight: 20.v,
                                  dotWidth: 20.h,
                                ),
                              ),
                            ),
                            const Spacer(),
                            OutlineGradientButton(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 1.v,
                                right: 1.h,
                                bottom: 1.v,
                              ),
                              strokeWidth: 1.h,
                              gradient: LinearGradient(
                                begin: Alignment(0.06, 0.08),
                                end: Alignment(1, 0.9),
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
                                  Navigator.pushNamed(
                                    context,
                                    '/register',
                                  );
                                },
                                text: "Join now",
                                buttonStyle: CustomButtonStyles.outline,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallGray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  bottom: 544.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle45425x23,
                      height: 25.v,
                      width: 23.h,
                      radius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle455187x23,
                      height: 187.v,
                      width: 23.h,
                      radius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String image,
    required String image1,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: image,
          height: 130.v,
          width: 143.h,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
        SizedBox(height: 12.v),
        CustomImageView(
          imagePath: image1,
          height: 187.v,
          width: 143.h,
          radius: BorderRadius.circular(
            16.h,
          ),
        ),
      ],
    );
  }
}
