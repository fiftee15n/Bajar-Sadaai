import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';

class SignInWithEmailValidPasswordScreen extends StatelessWidget {
  SignInWithEmailValidPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController lockoneController = TextEditingController();
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
              left: 26.h,
              top: 46.h,
              right: 26.h,
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
                  style: CustomTextstyles.bodyMediumManropeOnError_1,
                ),
                SizedBox(height: 54.h),
                CustomTextFormField(
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
                  prefixConstraints: BoxConstraints(
                    maxHeight: 42.h,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 10.h,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCheck,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 42.h,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 8.h,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineGray,
                  filled: false,
                ),
                SizedBox(height: 24.h),
                CustomTextFormField(
                  controller: lockoneController,
                  hintText: "Amm1234@",
                  hintstyle: CustomTextStyles.bodyLargeManrope,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 10.h, 8.h, 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLockGray900,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 42.h,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 10.h,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRemoveRedEye,
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 42.h,
                  ),
                  obscureText: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 8.h,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineGray,
                  filled: false,
                ),
                SizedBox(height: 24.h),
                CustomElevatedButton(
                  text: "Login",
                  buttonstyle: CustomButtonStyles.fillPrimaryTL12,
                  buttonTextStyle: CustomTextStyles.bodyLargeManropewhiteA700,
                  onPressed: () {
                    onTapLogin(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the app bar widget.
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingwidth: 57.h,
      leading: AppbarLeadingImageOne(
        imagePath: ImageConstant.imgArrowLeftGray900,
        height: 22.h,
        width: 22.h,
        margin: EdgeInsets.only(left: 35.h),
      ),
    );
  }

  /// Navigates to the signingInScreen when the action is triggered.
  void onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signingInScreen);
  }
}
