import 'dart:ui';
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.lightGreen50, // Corrected typo: lightFreen50 -> lightGreen50
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 78.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(
                flex: 57,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage15, // Corrected parameter name: Imagepath -> imagePath
                height: 124.h,
                width: double.maxFinite,
              ),
              SizedBox(height: 34.h),
              Text(
                "Enjoy Your hassle Free Bazar.",
                style: CustomTextStyle.titleLargeGray900,
              ),
              Spacer(
                flex: 42,
              ),
              CustomElevatedButton(
                height: 52.h,
                text: "Get Started", // Corrected parameter name: Text -> text
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 18.h,
                ),
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 6.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imagArrowLeft,
                    height: 24.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                buttonTextStyle: CustomTextStyle.bodyLargeWhite70018,
                onPressed: () {
                  onTapButtonSection(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapButtonSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}