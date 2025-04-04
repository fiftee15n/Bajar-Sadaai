import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';

// ignore_for_file: must_be_immutable
class ProductDetailsOneScreen extends StatelessWidget {
  ProductDetailsOneScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      appBar: _buildAppBar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildProductOverview(context),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(color: appTheme.gray100),
                  ),
                  SizedBox(height: 22.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Description",
                        style: CustomTextStyles.titleMediumArchivoBluegray900,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 324.h,
                    child: Text(
                      "Beef is tender, flavorful meat from mature sheep, known for its rich taste and high protein content. Perfect for curries, grills, and roasts.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumOnError.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  _buildDeliveryInfo(context),
                  SizedBox(height: 58.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(color: appTheme.gray100),
                  ),
                  SizedBox(height: 24.h),
                  _buildReviewsHeader(context),
                  SizedBox(height: 14.h),
                  _buildReviewsSummary(context),
                  SizedBox(height: 20.h),
                  _buildUserReviews(context),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(color: appTheme.gray100),
                  ),
                  SizedBox(height: 26.h),
                  _buildRelatedProducts(context),
                  SizedBox(height: 16.h),
                  _buildNotifications(context),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildPurchaseOptions(context),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnError,
        height: 36.h,
        width: 44.h,
        margin: EdgeInsets.symmetric(vertical: 10.h),
        onTap: () {
          onTapArrowLeftOne(context);
        },
      ),
      title: AppbarSubtitleOne(text: "Beef"),
      actions: [
        AppbarTrailingIconButton(
          imagePath: ImageConstant.imgCart,
        ),
        AppbarTrailingIconButton(
          imagePath: ImageConstant.imgFrame,
          margin: EdgeInsets.only(left: 8.h, right: 19.h),
          styleType: Style.bgFillWhiteA700,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductOverview(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          _buildImageSlider(context),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BDT 635",
                  style: CustomTextStyles.titleMediumArchivoGray90018,
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgRating8,
                  height: 16.h,
                  width: 22.h,
                ),
                Text(
                  "4.5",
                  style: CustomTextStyles.titleSmallInterPrimaryContainer,
                ),
                Text(
                  "(99 reviews)",
                  style: CustomTextStyles.bodyMediumOnError,
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryInfo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDelivery3,
            height: 16.h,
            width: 16.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Transportation 1",
              style: CustomTextStyles.bodyMediumOnError,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgReply1,
            height: 16.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 24.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Return Facility",
              style: CustomTextStyles.bodyMediumOnError,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewsHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h, right: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Reviews",
            style: CustomTextStyles.titleMediumArchivoBluegray900,
          ),
          Spacer(),
          Text(
            "See all",
            style: CustomTextStyles.bodySmallOnError,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 12.h,
            width: 14.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(left: 4.h, bottom: 2.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviewsSummary(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 16.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "4.5/5",
                  style: CustomTextStyles.titleLargeInterGray900,
                ),
                SizedBox(height: 2.h),
                Text(
                  "(99 reviews)",
                  style: CustomTextStyles.bodySmall12,
                ),
                SizedBox(height: 10.h),
                CustomRatingBar(
                  initialRating: 4,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 104.h,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 6.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(3.h),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                value: 0.74,
                                backgroundColor: appTheme.blueGray100,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  appTheme.yellow700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "5",
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 6.h,
                            width: 88.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(3.h),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                value: 0.56,
                                backgroundColor: appTheme.blueGray100,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  appTheme.yellow700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "4",
                          style: CustomTextStyles.bodySmall111,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 6.h,
                            width: 88.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(3.h),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                value: 0.24,
                                backgroundColor: appTheme.blueGray100,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  appTheme.yellow700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "3",
                          style: CustomTextStyles.bodySmall111,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 6.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(3.h),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                value: 0.15,
                                backgroundColor: appTheme.blueGray100,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  appTheme.yellow700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "2",
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 6.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(3.h),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                value: 0.03,
                                backgroundColor: appTheme.blueGray100,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  appTheme.yellow700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "1",
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h, right: 8.h),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return UserReviewsItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRelatedProducts(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  "Relevant products",
                  style: CustomTextStyles.titleMediumArchivoBluegray900,
                ),
                Spacer(),
                Text(
                  "See all",
                  style: CustomTextStyles.bodySmallOnError,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 12.h,
                  width: 14.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(left: 4.h, top: 2.h, right: 26.h),
                ),
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 12.h,
                children: List.generate(3, (index) {
                  return ListBonelessItemWidget();
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotifications(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(vertical: 14.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.h,
            width: 48.h,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL6,
            child: CustomImageView(
              imagePath: ImageConstant.imgBell,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Notify me of promotions",
              style: CustomTextStyles.bodySmallBluegray900,
            ),
          ),
          Spacer(),
          CustomSwitch(
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPurchaseOptions(BuildContext context) {
    return Container(
      height: 66.h,
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.h),
      decoration: AppDecoration.outlineGray900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 36.h,
            width: 36.h,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.outlinePrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgAddShoppingCart,
            ),
          ),
          CustomElevatedButton(
            height: 42.h,
            width: 286.h,
            text: "Buy Now",
            buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
            onPressed: () {
              onTapBuyNow(context);
            },
          ),
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  void onTapArrowLeftOne(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the checkoutCartScreen when the action is triggered.
  void onTapBuyNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutCartScreen);
  }

  class SliderItemWidget extends StatelessWidget {
    const SliderItemWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return CustomImageView(
        imagePath: ImageConstant.imgImage43,
        height: 178.h,
        radius: BorderRadius.circular(6.h),
      );
    }
  }

  class UserReviewsItemWidget extends StatelessWidget {
    const UserReviewsItemWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 36.h,
              width: 36.h,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.none,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User 01",
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    Text(
                      "Product is good",
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "A day ago",
              style: CustomTextStyles.bodySmallOnError,
            ),
          ],
        ),
      );
    }
  }

  class ListBonelessItemWidget extends StatelessWidget {
    const ListBonelessItemWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        width: 136.h,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage44,
              height: 100.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(4.h),
              margin: EdgeInsets.symmetric(horizontal: 8.h),
            ),
            SizedBox(height: 6.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "Boneless Beef",
                  style: CustomTextStyles.bodySmallBluegray900,
                ),
              ),
            ),
            SizedBox(height: 14.h),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRating8,
                            height: 16.h,
                            width: 16.h,
                          ),
                          Text(
                            "4.5",
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "BDT 700",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}

