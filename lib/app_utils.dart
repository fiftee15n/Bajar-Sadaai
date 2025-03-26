import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import '../app_theme.dart';

final Map<String, String> en = {
  "lbl": "***********",
  "lbl2": "****",
  "lbl_0": "0",
  "lbl_01600011123": "01600011123",
  "lbl_1": "1",
  "lbl_11201": "11201\n",
  "lbl_12": "12",
  "lbl_123544": "123544",
  "lbl_123_456_7890": "123-456-7890",
  "lbl_154_99": "\$154.99",
  "lbl_2": "2",
  "lbl_2334": "****** 2334",
  "lbl_3": "3",
  "lbl_30": "30",
  "lbl_3774": "*******3774",
  "lbl_3_days_ago": "3 days ago",
  "lbl_4": "4",
  "lbl_4_5": "4.5",
  "lbl_4_52": "4.5",
  "lbl_4_5_5": "4.5/5",
  "lbl_4_5_99": "4.5 (99)",
  "lbl_5": "5",
  "lbl_929_617_0714": "(929) 617-0714",
  "lbl_99": "\$99",
  "lbl_992": "(99)",
  "lbl_99_reviews": "(99 reviews)",
  "lbl_a_day_ago": "A day ago",
  "lbl_abc_gmail_com": "abc@gmail.com",
  "lbl_account": "Account",
  "lbl_acestrike": "AceStrike",
  "lbl_add_card": "Add card",
  "lbl_add_to_cart": "Add to cart",
  "lbl_amm1234": "Amm1234@",
  "lbl_antonio_diaz": "Antonio Diaz",
  "lbl_back_to_home": "Back to Home",
  "lbl_bajai_saadai": "Bajai Saadai",
  "lbl_basics": "Basics",
  "lbl_bdt_0": "BDT 0",
  "lbl_bdt_02": "BDT 0",
  "lbl_bdt_100": "BDT 100",
  "lbl_bdt_130": "BDT 130",
  "lbl_bdt_180": "BDT 180",
  "lbl_bdt_199": "BDT 199",
  "lbl_bdt_1992": "BDT 199",
  "lbl_bdt_220": "BDT 220",
  "lbl_bdt_320": "BDT 320",
  "lbl_bdt_3202": "BDT 320",
  "lbl_bdt_33": "BDT 33",
  "lbl_bdt_340": "BDT 340",
  "lbl_bdt_602": "BDT 602",
  "lbl_bdt_635": "BDT 635",
  "lbl_bdt_6352": "BDT 635",
  "lbl_bdt_700": "BDT 700",
  "lbl_beef": "Beef",
  "lbl_beef_boneless": "Beef (Boneless)",
  "lbl_birthday": "Birthday",
  "lbl_boneless_beef": "Boneless Beef",
  "lbl_buy_now": "Buy Now",
  "lbl_card": "Card",
  "lbl_card_holder": "Card holder",
  "lbl_card_number": "Card number",
  "lbl_cart": "Cart",
  "lbl_cauliflower": "Cauliflower",
  "lbl_checkout": "Checkout",
  "lbl_confirm": "Confirm",
  "lbl_continue": "Continue",
  "lbl_deals": "Deals",
  "lbl_delivery": "Delivery",
  "lbl_description": "Description",
  "lbl_deshi_ghee": "Deshi Ghee",
  "lbl_dragon_fruits": "Dragon Fruits",
  "lbl_drinkware": "Drinkware",
  "lbl_email": "Email",
  "lbl_enchant_beauty": "Enchanté Beauty",
  "lbl_facebook": "Facebook",
  "lbl_faqs": "FAQS",
  "lbl_fees": "Fees",
  "lbl_final_checks": "Final checks",
  "lbl_fish_pabda": "Fish : Pabda",
  "lbl_fish_rui": "Fish : RUI",
  "lbl_fish_rui2": "Fish : Rui",
  "lbl_flash_sale": "Flash sale",
  "lbl_foldable_desk": "Foldable Desk",
  "lbl_for_you": "For you",
  "lbl_free_deliver": "Free deliver",
  "lbl_fruits": "Fruits",
  "lbl_get_started": "Get Started",
  "lbl_ghee": "Ghee",
  "lbl_go_to_checkout": "Go to checkout",
  "lbl_google": "Google",
  "lbl_groceries": "Groceries",
  "lbl_help_support": "Help & support",
  "lbl_home": "Home",
  "lbl_home_delivery": "Home delivery",
  "lbl_honey": "Honey",
  "lbl_instagram": "Instagram",
  "lbl_james_harrid": "James Harrid",
  "lbl_loading": "Loading...",
  "lbl_log_out": "Log out",
  "lbl_login": "Login",
  "lbl_luminalux": "LuminaLux",
  "lbl_meat": "Meat",
  "lbl_meat_items": "Meat Items",
  "lbl_mm_yyyy": "MM/YYYY",
  "lbl_mustard_oil": "Mustard Oil",
  "lbl_mutton": "Mutton",
  "lbl_my_orders": "My orders",
  "lbl_my_profile": "My profile",
  "lbl_name": "Name",
  "lbl_next": "Next",
  "lbl_notification": "Notification",
  "lbl_online": "Online",
  "lbl_online2": "ONLINE",
  "lbl_or": "or",
  "lbl_order_collected": "Order collected",
  "lbl_order_id": "Order ID",
  "lbl_order_place": "Order place",
  "lbl_order_received": "Order received",
  "lbl_others": "Others",
  "lbl_password": "Password",
  "lbl_pay_now": "Pay now",
  "lbl_payment": "Payment",
  "lbl_payment_details": "Payment details",
  "lbl_phone": "Phone",
  "lbl_pick_up_options": "Pick-up options",
  "lbl_popular": "Popular",
  "lbl_powerplay": "PowerPlay",
  "lbl_product_details": "Product Details",
  "lbl_product_details2": "Product Details",
  "lbl_product_is_good": "Product is good",
  "lbl_product_title": "Product title",
  "lbl_promotion": "Promotion",
  "lbl_purchase_date": "Purchase date",
  "lbl_referral_code": "Referral code",
  "lbl_resend_the_code": "Resend the code",
  "lbl_return_facility": "Return Facility",
  "lbl_reviews": "Reviews",
  "lbl_sale_15": "Sale 15%",
  "lbl_save_changes": "Save changes",
  "lbl_search": "Search",
  "lbl_security_code": "Security code",
  "lbl_see_all": "See all",
  "lbl_select_card": "Select card",
  "lbl_select_one": "Select one",
  "lbl_set_birthday": "Set birthday",
  "lbl_shell_desk": "Shell Desk",
  "lbl_skip": "Skip",
  "lbl_spices": "Spices",
  "lbl_subtotal": "Subtotal",
  "lbl_success": "Success",
  "lbl_support": "Support",
  "lbl_tamal_gmail_com": "tamal@gmail.com",
  "lbl_tax_0": "Tax (0%)",
  "lbl_tiktok": "Tiktok",
  "lbl_timeless_beauty": "Timeless Beauty",
  "lbl_total": "Total",
  "lbl_tranportation_i": "Tranportation i",
  "lbl_twitter": "Twitter",
  "lbl_user_01": "User 01",
  "lbl_user_02": "User 02",
  "lbl_valid_until": "Valid until",
  "lbl_vegetables": "Vegetables",
  "lbl_verify": "Verify",
  "lbl_view_all": "View all",
  "lbl_watermelon": "Watermelon",
  "lbl_your_name": "Your name",
  "lbl_your_profile": "Your Profile",
  "lbl_youtube": "Youtube",
  "msg_08_14_2025_10_00": "08/14/2025\n10:00 AM - 4:00 PM",
  "msg_08_14_2025_9_00": "08/14/2025 | 9:00 AM - 11:00 PM",
  "msg_8_13_2025_5_30": "8/13/2025 5:30 PM",
  "msg_accept_the_term": "Accept the Term and Conditions",
  "msg_add_new_payment": "Add new payment options",
  "msg_all_products_are": "All products are available",
  "msg_available_options": "Available options according to your zip code",
  "msg_available_options2": "Available options according to your zip code 11201\nPlease select one option below",
  "msg_available_options3": "Available options according to your locations.",
  "msg_beef_is_tender": "Beef is tender, flavorful meat from mature sheep, known for its rich taste and high protein content. Perfect for curries, grills, and roasts.",
  "msg_cancel_subscription": "Cancel subscription",
  "msg_cards_management": "Cards management",
  "msg_change_delivery": "Change delivery method",
  "msg_change_or_add_an": "Change or add an email address",
  "msg_close_your_account": "Close your account",
  "msg_continue_with_email": "Continue with Email",
  "msg_create_your_account": "Create your account",
  "msg_data_and_privacy": "Data and Privacy",
  "msg_delivery_details": "Delivery details",
  "msg_describe_your_issue": "Describe your issue",
  "msg_desk_beige_78": "desk, beige, 78 3/4x23 5/8\"",
  "msg_discover_the_freshness": "Discover the freshness of our product",
  "msg_embrace_the_taste": "Embrace the Taste of...",
  "msg_enjoy_your_hassle_free": "Enjoy your hassle-free Bazar.",
  "msg_enter_your_email": "Enter your email address",
  "msg_enter_your_password": "Enter your password",
  "msg_enter_your_user": "Enter your user name",
  "msg_estimated_delivery": "Estimated delivery",
  "msg_example_email_com": "example@email.com",
  "msg_for_security_reasons": "For security reasons, we are unable to display the recipient's complete address.",
  "msg_fresh_and_qualityful": "Fresh and qualityful",
  "msg_get_15_off_your": "Get 15% off your first order!",
  "msg_have_a_discount": "Have a discount code?",
  "msg_hi_jahangir_alam": "Hi, Jahangir Alam Tamal",
  "msg_how_did_you_hear": "How did you hear about us?",
  "msg_how_much_is_the": "How much is the shipping cost?",
  "msg_how_was_your_experience": "How was your experience?",
  "msg_i_agree_with_terms": "I agree with Terms & Conditions",
  "msg_jahangir_alam_tamal": "Jahangir Alam Tamal",
  "msg_lilyamber_gmail_com": "lilyamber@gmail.com",
  "msg_log_into_your_account": "Log into your account",
  "msg_micka_study_desk": "Micka study desk",
  "msg_notify_me_of_promotions": "Notify me of promotions",
  "msg_order_placed_successfully": "Order placed successfully",
  "msg_our_return_policy": "Our return policy",
  "msg_packing_yor_order": "Packing your order",
  "msg_personal_information": "Personal Information",
  "msg_pick_up_at_store": "Pick up at store",
  "msg_please_enter_the": "Please enter the verification code",
  "msg_please_enter_the2": "Please enter the verification code we sent to your email address to complete the verification process.",
  "msg_please_select_one": "Please select one option below",
  "msg_postal_code_11201": "Postal code 11201",
  "msg_privacy_security": "Privacy & Security",
  "msg_purchase_details": "Purchase details",
  "msg_recommended_for": "Recommended for you",
  "msg_recommended_topics": "Recommended topics",
  "msg_relevant_products": "Relevant products",
  "msg_reset_your_password": "Reset your password",
  "msg_share_profile_with": "Share profile with your network",
  "msg_show_product_availability": "Show product availability",
  "msg_styleka_offers_delivery": "Styleka offers delivery service to your address.",
  "msg_subscription_bill": "Subscription Bill",
  "msg_thanks_for_purchasing": "Thanks for purchasing with \nBajar Sadaai",
  "msg_the_earliest_delivery": "The earliest delivery available is\n08/14/2025 | 9:00 AM 11:00 PM",
  "msg_the_earliest_delivery2": "The earliest delivery available is\n",
  "msg_use_as_default_payment": "Use as default payment method",
  "msg_verify_your_email": "Verify your email",
  "msg_visibility_of_shared": "Visibility of shared posts",
  "msg_we_have_received": "We have received your order and will start processing it soon",
  "msg_we_sent_to_your": "We sent to your email address to complete the verification process.",
  "msg_xxxx_xxxx_xxxx_xxxx": "xxxx xxxx xxxx xxxx",
  "msg_you_can_pick_up": "You can pick up your order at a time that is suitable for you.",
  "msg_your_order_details": "Your order details",
  "msg_your_preferred_delivery": "Your preferred delivery option for the order?",
  "err_msg_please_enter_valid_email": "Please enter a valid email",
  "err_msg_please_enter_valid_password": "Please enter a valid password",
  "err_msg_please_enter_valid_text": "Please enter valid text",
  "err_msg_field_cannot_be_empty": "Field cannot be empty",
  "msg_network_err": "Network Error",
  "msg_something_went_wrong": "Something Went Wrong!"
};

const num FIGMA_DESIGN_WIDTH = 390;
const num FIGMA_DESIGN_HEIGHT = 844;
const num FIGMA_DESIGN_STATUS_BAR = 0;
const String dateTimeFormatPattern = 'dd/MM/yyyy';

/// Checks if string is email.
bool isValidEmail(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;
  if (!isRequired && (inputString == null ? true : inputString.isEmpty)) {
    isInputStringValid = true;
  }
  if (inputString != null && inputString.isNotEmpty) {
    const pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final regExp = RegExp(pattern);
    isInputStringValid = regExp.hasMatch(inputString);
  }
  return isInputStringValid;
}

/// Password should have,
/// at least an upper case letter
/// at least a lower case letter
/// at least a digit
/// at least a special character [@#$%^&+=]
/// length of at least 4
/// no white space allowed
bool isValidPassword(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;
  if (!isRequired && (inputString == null ? true : inputString.isEmpty)) {
    isInputStringValid = true;
  }
  if (inputString != null && inputString.isNotEmpty) {
    const pattern =
        r'^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$';
    final regExp = RegExp(pattern);
    isInputStringValid = regExp.hasMatch(inputString);
  }
  return isInputStringValid;
}

/// Checks if string consists only of Alphabet. (No Whitespace)
bool isText(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;
  if (!isRequired && (inputString == null ? true : inputString.isEmpty)) {
    isInputStringValid = true;
  }
  if (inputString != null && inputString.isNotEmpty) {
    const pattern = r'^[a-zA-Z]+$';
    final regExp = RegExp(pattern);
    isInputStringValid = regExp.hasMatch(inputString);
  }
  return isInputStringValid;
}

extension ResponsiveExtension on num {
  double get width => SizeUtils.width;
  double get h => ((this * width) / FIGMA_DESIGN_WIDTH);
  double get fSize => ((this * width) / FIGMA_DESIGN_WIDTH);
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(toStringAsFixed(fractionDigits));
  }
}

extension NonZeroExtension on double {
  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}




extension DateTimeExtension on DateTime {
  String format({
    String pattern = dateTimeFormatPattern,
    String? locale,
  }) {
    // Initialize date formatting for the specified locale if provided
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale, null);
    }
    // Format the DateTime object using the provided pattern and locale
    return DateFormat(pattern, locale).format(this);
  }
}

class DateFormat {
}

enum DeviceType { mobile, tablet, desktop }

typedef ResponsiveBuild = Widget Function(
    BuildContext context, Orientation orientation, DeviceType deviceType);

// ignore_for_file: must_be_immutable
class ImageConstant {
  // Image folder path
  static String imagePath = 'assets/images';
  // Common images
  static String imgArrowLeftOneError = '$imagePath/img_arrow_left_onerror.svg';
  static String imgCart = '$imagePath/img_cart.svg';
  static String imgFrame = '$imagePath/img_frame.svg';
  static String imgImage43 = '$imagePath/img_image_43.png';
  static String imgRating8 = '$imagePath/img_rating_8.png';
  static String imgDelivery3 = '$imagePath/img_delivery_3.svg';
  static String imgReply1 = '$imagePath/img_reply_1.svg';
  static String imgArrowRight = '$imagePath/img_arrow_right.svg';
  static String imgImage44 = '$imagePath/img_image_44.png';
  static String imgImage42 = '$imagePath/img_image_42.png';
  static String imgImage45 = '$imagePath/img_image_45.png';
  static String imgBell1 = '$imagePath/img_bell_1.svg';
  static String imgAddShoppingCart = '$imagePath/img_add_shopping_cart.svg';
  static String imgSearch = '$imagePath/img_search.svg';
  static String imgScan1 = '$imagePath/img_scan_1.svg';
  static String imgImage25 = '$imagePath/img_image_25.png';
  static String imgImage26 = '$imagePath/img_image_26.png';
  static String imgImage27 = '$imagePath/img_image_27.png';
  static String imgImage28 = '$imagePath/img_image_28.png';
  static String imgImage24 = '$imagePath/img_image_24.png';
  static String imgGroup = '$imagePath/img_group.svg';
  static String imgGroup1 = '$imagePath/img_group_1.svg';
  static String imgGroup3 = '$imagePath/img_group_3.svg';
  static String imgImage39 = '$imagePath/img_image_39.png';
  static String imgCircleArrowRight = '$imagePath/img_circle_arrow_right.svg';
  static String imgImage40 = '$imagePath/img_image_40.png';
  static String imgImage41 = '$imagePath/img_image_41.png';
  static String imgImage21 = '$imagePath/img_image_21.png';
  static String imgImage30 = '$imagePath/img_image_30.png';
  static String imgImage31 = '$imagePath/img_image_31.png';
  static String imgImage32 = '$imagePath/img_image_32.png';
  static String imgImage33 = '$imagePath/img_image_33.png';
  static String imgImage34 = '$imagePath/img_image_34.png';
  static String imgImage36 = '$imagePath/img_image_36.png';
  static String imgImage35 = '$imagePath/img_image_35.png';
  static String imgImage37 = '$imagePath/img_image_37.png';
  static String imgNavHome = '$imagePath/img_nav_home.svg';
  static String imgNavDeals = '$imagePath/img_nav_deals.svg';
  static String imgNavSearch = '$imagePath/img_nav_search.svg';
  static String imgNavCart = '$imagePath/img_nav_cart.svg';
  static String imgNavAccount = '$imagePath/img_nav_account.svg';
  static String imgArrowRightGray900 = '$imagePath/img_arrow_right_gray_900.svg';
  static String imgContrast = '$imagePath/img_contrast.svg';
  static String imgButton25 = '$imagePath/img_button_25.svg';
  static String imgRemove = '$imagePath/img_remove.svg';
  static String imgEAdd = '$imagePath/img_e_add.svg';
  static String imgMobile = '$imagePath/img_mobile.svg';
  static String imgBookmark1 = '$imagePath/img_bookmark_1.svg';
  static String imgArrowUp = '$imagePath/img_arrow_up.svg';
  static String imgPayment = '$imagePath/img_payment.svg';
  static String imgChevronLeftLarge = '$imagePath/img_chevron_left_large.svg';
  static String imgProfile = '$imagePath/img_profile.svg';
  static String imgEdit2 = '$imagePath/img_edit_2.svg';
  static String imgContrastGreen80001 = '$imagePath/img_contrast_green_800_01.svg';
  static String imgStorefront1 = '$imagePath/img_storefront_1.svg';
  static String imgLinkedin = '$imagePath/img_linkedin.svg';
  static String imgCartPrimary = '$imagePath/img_cart_primary.svg';
  static String imgArchiveCheck2 = '$imagePath/img_archive_check_2.svg';
  static String imgArrowDownGray900 = '$imagePath/img_arrow_down_gray_900.svg';
  static String imgCreditCard1 = '$imagePath/img_credit_card_1.svg';
  static String imgTelevision = '$imagePath/img_television.svg';
  static String imgEAddPrimary = '$imagePath/img_e_add_primary.svg';
  static String imgCheck1 = '$imagePath/img_check_1.svg';
  static String imgHome = '$imagePath/img_home.svg';
  static String imgCalendar = '$imagePath/img_calendar.svg';
  static String imgNEdit1 = '$imagePath/img_n_edit_1.svg';
  static String imgQrCode1 = '$imagePath/img_qr_code_1.svg';
  static String imgEdit1 = '$imagePath/img_edit_1.svg';
  static String imgHide = '$imagePath/img_hide.svg';
  static String imgUserList = '$imagePath/img_user_list.svg';
  static String imgArrowRightGray700 = '$imagePath/img_arrow_right_gray_700.svg';
  static String imgCreditCard = '$imagePath/img_credit_card.svg';
  static String imgSecurity = '$imagePath/img_security.svg';
  static String imgHeadset = '$imagePath/img_headset.svg';
  static String imgERemove1 = '$imagePath/img_e_remove_1.svg';
  static String imgImage50 = '$imagePath/img_image_50.png';
  static String imgCreditCardGray900 = '$imagePath/img_credit_card_gray_900.svg';
  static String imgFolder = '$imagePath/img_folder.svg';
  static String imgEdit = '$imagePath/img_edit.svg';
  static String imgBulb611 = '$imagePath/img_bulb_61_1.svg';
  static String imgPrivacy1 = '$imagePath/img_privacy_1.svg';
  static String imgUser = '$imagePath/img_user.svg';
  static String imgCircle091 = '$imagePath/img_circle_09_1.svg';
  static String imgBell2 = '$imagePath/img_bell_2.svg';
  static String imgImage15 = '$imagePath/img_image_15.png';
  static String imgArrowleft = '$imagePath/img_arrowleft.svg';
  static String imgImage82 = '$imagePath/img_image_82.png';
  static String imgLetter = '$imagePath/img_letter.svg';
  static String imgGoogle = '$imagePath/img_google.svg';
  static String imgLogoFbSimple = '$imagePath/img_logo_fb_simple.svg';
  static String imgApple = '$imagePath/img_apple.svg';
  static String imgArrowLeftGray900 = '$imagePath/img_arrow_left_gray_900.svg';
  static String imgProfileGray900 = '$imagePath/img_profile_gray_900.svg';
  static String imgLock = '$imagePath/img_lock.svg';
  static String imgLockGray900 = '$imagePath/img_lock_gray_900.svg';
  static String imgRemoveRedEye = '$imagePath/img_remove_red_eye.svg';
  static String imgArrowdown = '$imagePath/img_arrowdown.svg';
  static String imgGroupPrimary = '$imagePath/img_group_primary.svg';
  static String imgLoaderBars1 = '$imagePath/img_loader_bars_1.svg';
  static String imgCCheck = '$imagePath/img_c_check.svg';
  static String imgCheck = '$imagePath/img_check.svg';
  static String imgUserGreen90001 = '$imagePath/img_user_green_900_01.svg';
  static String imageNotFound = 'assets/images/image_not_found.png';
}

class Sizer extends StatelessWidget {
  const Sizer({Key? key, required this.builder}) : super(key: key);

  /// Builds the widget whenever the orientation changes.
  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

// ignore_for_file: must_be_immutable
class SizeUtils {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;
  /// Device's Orientation
  static late Orientation orientation;
  /// Type of Device
  ///
  /// This can either be mobile or tablet
  static late DeviceType deviceType;
  /// Device's Height
  static late double height;
  /// Device's Width
  static late double width;

  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    boxConstraints = constraints;
    orientation = currentOrientation;
    if (orientation == Orientation.portrait) {
      width =
          boxConstraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNonZero();
    } else {
      width =
          boxConstraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxWidth.isNonZero();
    }
    deviceType = DeviceType.mobile;
  }
}