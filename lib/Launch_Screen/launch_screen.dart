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
      backgroundColor: AppTheme.lightGreen50, // Use AppTheme for consistent theming
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 78.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(
                flex: 57,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage15,
                height: 124.h,
                width: double.infinity,
              ),
              SizedBox(height: 34.h),
              const Text(
                "Enjoy Your hassle Free Bazar.",
                style: CustomTextStyle.titleLargeGray900,
              ),
              const Spacer(
                flex: 42,
              ),
              CustomElevatedButton(
                height: 52.h,
                text: "Get Started",
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 18.h,
                ),
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 6.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft, // Corrected typo: imagArrowLeft -> imgArrowLeft
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