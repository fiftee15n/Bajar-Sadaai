import 'package:flutter/material.dart';  
import './account_settings_one_screen/account_settings_one_screen.dart';  
import './account_settings_screen/account_settings_screen.dart';  
import './account_settings_two_screen/account_settings_two_screen.dart';  
import './app_navigation_screen/app_navigation_screen.dart';  
import './checkout_cart_screen/checkout_cart_screen.dart';  
import './checkout_delivery_details_screen/checkout_delivery_details_screen.dart';  
import './checkout_delivery_options_screen/checkout_delivery_options_screen.dart';  
import './checkout_order_review_screen/checkout_order_review_screen.dart';  
import './checkout_payment_method_screen/checkout_payment_method_screen.dart';  
import './checkout_payment_success_screen/checkout_payment_success_screen.dart';  
import './help_support_screen/help_support_screen.dart';  
import './home_product_listing_screen/home_product_listing_screen.dart';  
import './launch_screen/launch_screen.dart';  
import './onboarding_user_awareness_screen/onboarding_user_awareness_screen.dart';  
import './payment_method_settings_screen/payment_method_settings_screen.dart';  
import './product_details_screen/product_details_screen.dart';  
import './sign_in_with_email_screen/sign_in_with_email_screen.dart';  
import './sign_in_with_email_valid_password_screen/sign_in_with_email_valid_password_screen.dart';  
import './sign_up_screen/sign_up_screen.dart';  
import './sign_up_with_email_screen/sign_up_with_email_screen.dart';  
import './sign_up_with_email_valid_code_screen/sign_up_with_email_valid_code_screen.dart';  
import './sign_up_with_email_verify_email_screen/sign_up_with_email_verify_email_screen.dart';  
import './sign_in_screen/sign_in_screen.dart';  
import './signing_up_screen/signing_up_screen.dart';  

// Ignore for file-level must be immutable
class AppRoutes {
  static const String productDetailsOneScreen = '/home_product_listing_screen';
  static const String homeProductListingScreen = '/home_product_listing_screen';
  static const String checkoutCartScreen = '/checkout_cart_screen';
  static const String checkoutCartInitialPage = '/checkout_cart_initial_page';
  static const String checkoutDeliveryOptionsScreen = '/checkout_delivery_options_screen';
  static const String checkoutOrderReviewScreen = '/checkout_order_review_screen';
  static const String checkoutPaymentMethodScreen = '/checkout_payment_method_screen';
  static const String checkoutPaymentSuccessScreen = '/checkout_payment_success_screen';
  static const String onboardingUserAwarenessScreen = '/onboarding_user_awareness_screen';
  static const String accountSettingsScreen = '/account_settings_screen';
  static const String accountSettingsOneScreen = '/account_settings_one_screen';
  static const String accountSettingsTwoScreen = '/account_settings_two_screen';
  static const String launchScreen = '/launch_screen';
  static const String signInScreen = '/sign_in_screen';
  static const String signUpWithEmailScreen = '/sign_up_with_email_screen';
  static const String signInWithEmailValidScreen = '/sign_in_with_email_valid_password_screen';
  static const String signingInScreen = '/signing_in_screen';
  static const String signUpWithEmailVerifyEmailScreen = '/sign_up_with_email_verify_email_screen';
  static const String signUpWithEmailValidCodeScreen = '/sign_up_with_email_valid_code_screen';
  static const String helpSupportScreen = '/help_support_screen';
  static const String navigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {  
  productDetailsOneScreen: (context) => ProductDetailsOneScreen(),  
  homeProductListingScreen: (context) => HomeProductListingScreen(),  
  checkoutCartScreen: (context) => CheckoutCartScreen(),  
  checkoutDeliveryOptionsScreen: (context) => CheckoutDeliveryOptionsScreen(),  
  checkoutOrderReviewScreen: (context) => CheckoutOrderReviewScreen(),  
  checkoutPaymentMethodScreen: (context) => CheckoutPaymentMethodScreen(),  
  checkoutPaymentSuccessScreen: (context) => CheckoutPaymentSuccessScreen(),  
  onboardingUserAwarenessScreen: (context) => OnboardingUserAwarenessScreen(),  
  accountSettingsScreen: (context) => AccountSettingsScreen(),  
  accountSettingsOneScreen: (context) => AccountSettingsOneScreen(),  
  accountSettingsTwoScreen: (context) => AccountSettingsTwoScreen(),  
  launchScreen: (context) => LaunchScreen(),  
  signInScreen: (context) => SignInScreen(),  
  signUpWithEmailScreen: (context) => SignUpWithEmailScreen(),  
  signInWithEmailValidScreen: (context) => SignInWithEmailValidPasswordScreen(),  
  signingInScreen: (context) => SigningInScreen(),  
  signUpWithEmailVerifyEmailScreen: (context) => SignUpWithEmailVerifyEmailScreen(),  
  signUpWithEmailValidCodeScreen: (context) => SignUpWithEmailValidCodeScreen(),  
  helpSupportScreen: (context) => HelpSupportScreen(),  
  appNavigationScreen: (context) => AppNavigationScreen(),  
  launchRole: (context) => LaunchScreen(),  
};  
}
