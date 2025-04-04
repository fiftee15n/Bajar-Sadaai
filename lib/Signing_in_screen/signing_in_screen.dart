import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';

class SigningInScreen extends StatelessWidget { // Corrected class name
  const SigningInScreen({Key? key}) : 
  super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 174.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage82, // Corrected property name
                height: 92.h,
                width: 164.h,
              ),
              Text(
                "Create your account",
                style: CustomTextStyles.bodyMediumManropeOnError_1,
              ),
              Spacer(
                flex: 58,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLoaderBarasi, // Corrected property name
                height: 48.h,
                width: 58.h,
              ),
              SizedBox(height: 8.h),
              Text(
                "Loading...",
                style: CustomTextStyles.bodyMediumManropeBluegray900,
              ),
              Spacer(
                flex: 41,
              ),
            ],
          ),
        ),
      ),
    );
  }
}