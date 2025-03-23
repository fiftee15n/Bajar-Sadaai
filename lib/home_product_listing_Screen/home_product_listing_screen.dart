import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/caroousel_slider_plus.dart';
import 'package;responsive_grid_list/responsive_grid_list.dart';
import '../app_theme.dart';
import '../app_utils.dart';
import '../routes/app_routes.dart';
import '../widgets.dart';

class HomeProductListingScreen extends StatelessWidget{

  HomeProductListingScreen({Key? key})
  :super(key: key: key,);

  TextEditingController searchthreeController = TextEditingController();

  int sliderIndex = 1;
  int sliderIndex1 = 1;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppBarTheme.whiteA700,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SafeArea(
        top:false,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildGreetingSection(context),
                  _buildCategorySlider(context),
                  SizedBox(height: 16.h),
                  _buildPromoSlider(context),
                  SizedBox(height: 26.h),
                  _buildFlashSaleTimer(context),
                   SizedBox(height: 12.h),
                    _buildFreeDeliveryList(context),
                   SizedBox(height: 42.h),
                    _buildFruitsList(context),
                   SizedBox(height: 18.h),
                    _buildMeatItemsList(context),
                   SizedBox(height: 16.h),
                   Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 28.h,
                                          ),
                   ),
                   child: _buildMeatItemsSection(context,
                   meatitemsOne : "For You",
                   viewallOne: "View all",
                   ),
              ),
              SizedBox(height: 12.h),
              _buildFeaturedProductsGrid(context),
              SizedBox(height: 24.h),


                ],
              ),
            ),
          ),
        ),
      ),
       bottomNavigationBar: SizedBox(
        width: double.maxFinite
        child: _buildBottomNavigationBar(context),
       ),
    )
  }
}

PreferredSizeWidget _buildAppBar(BuildContext context){

  return CustomAppBar(
    height:50.h,
    title: SizedBox(
      width: double.maxFinite,
      child: AppBarTitleSearchview(
        Margin: EdgeInsets.only(left: 20.h),
        hintText: "Search",
        controller: searchthreeController,
      ),
    ),
    Actions: [
      AppbarTrailingconbuttonOneOne(
        imagePath: ImageConstant.imgCart,
        margin: EdgeInsets.only(
          top: 7.h,
          right: 20.h,
          bottom: 7.h,
        ),
      )
    ],
  );
}

 Widget_buildGreetingSection(BuildContext context){

  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.only(
      left: 44.h,
      top: 4.h,
      bottom: 4.h,
    ),
    decoration: AppDecoration.outlineGray9001,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 2.h),
        Text("Hi, Jahangir Alam Tamal",
        style: theme.textTheme.bodyMedium,
        )
      ],
    ),
  );
 }

 