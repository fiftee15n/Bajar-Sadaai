import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../../widgets.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(),
                color: const Color(0xFFFFFFFF),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: const Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: const Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      color: Color(0xFF000000),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        buildScreenTitle(
                          context,
                          screenTitle: "Product Details One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productDetailsOneScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Home - Product Listing",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeProductListingScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Checkout - Cart",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutCartScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Checkout - Delivery Options",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutDeliveryOptionsScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Checkout - Order Review",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutOrderReviewScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Checkout - Payment Method",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutPaymentMethodScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Checkout - Payment Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutPaymentSuccessScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Onboarding - User Awareness",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingUserAwarenessScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Checkout - Delivery Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.checkoutDeliveryDetailsScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Account Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountSettingsScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Account Settings One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountSettingsOneScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Payment Method Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentMethodSettingsScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Account Settings Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountSettingsTwoScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Help & Support",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.helpSupportScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Launch Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.launchScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Sign up with Email",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpWithEmailScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Sign up with Email Verify Email",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signUpWithEmailVerifyEmailScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Signing Up",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signingUpScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Sign in with Email",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInWithEmailScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Sign in with Email - Valid Password",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signInWithEmailValidPasswordScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Signing In",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signingInScreen),
                        ),
                        buildScreenTitle(
                          context,
                          screenTitle: "Sign up with Email - Valid Code",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.signUpWithEmailValidCodeScreen),
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
}

/// Common widget
Widget buildScreenTitle(
  BuildContext context, {
  required String screenTitle,
  Function? onTapScreenTitle,
}) {
  return GestureDetector(
    onTap: () {
      onTapScreenTitle?.call();
    },
    child: Container(
      decoration: const BoxDecoration(),
      color: const Color(0xFFFFFFFF),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              screenTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFF888888),
          ),
        ],
      ),
    ),
  );
}

/// Common click event
void onTapScreenTitle(
  BuildContext context,
  String routeName,
) {
  Navigator.pushNamed(context, routeName);
}