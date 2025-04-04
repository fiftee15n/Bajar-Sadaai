import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart'; // Fixed import syntax

// ignore_for_file: must_be_immutable
class SignInwithEmailScreen extends StatelessWidget {
  SignInwithEmailScreen({Key? key}) : super(key: key);

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController lockoneController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SafeArea(
        top: false,
        child: Form(
          key: _formkey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 24.h,
              top: 44.h,
              right: 24.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage82,
                  height: 92.h,
                  width: 164.h,
                ),
                Text(
                  "Log into your account",
                  style: CustomTextStyles.bodyMediumManropeOnError_1,
                ),
                SizedBox(height: 54.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: CustomTextFormField(
                    controller: emailcontroller,
                    hintText: "lilyamber@gmail.com",
                    hintstyle: CustomTextStyles.bodyLargeManrope,
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 10.h, 8.h, 10.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 20.h,
                        width: 20.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(maxHeight: 42.h),
                    suffix: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 10.h,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCCheck,
                        height: 20.h,
                        width: 20.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: 42.h),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 8.h,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGray,
                    filled: false,
                  ),
                ),
                SizedBox(height: 20.h),
                CustomTextFormField(
                  controller: lockoneController,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(20.h, 14.h, 16.h, 14.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLockGray900,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(maxHeight: 50.h),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 14.h, 20.h, 14.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRemoveRedEye,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(maxHeight: 50.h),
                  obscureText: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 14.h,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlue,
                  filled: false,
                ),
                SizedBox(height: 20.h),
                CustomElevatedButton(
                  text: "Login",
                  margin: EdgeInsets.only(left: 4.h, right: 2.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL12,
                  buttonTextStyle: CustomTextStyles.bodyLargeManropeWhiteA700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 57.h,
      leading: AppbarLeadingImageOne(
        imagePath: ImageConstant.imgArrowLeftGray900,
        height: 22.h,
        width: 22.h,
        margin: EdgeInsets.only(left: 35.h),
      ),
    );
  }
}
