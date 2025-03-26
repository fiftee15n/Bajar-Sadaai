import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:your_app/theme.dart';
import 'package:your_app/utils.dart';
import 'package:your_app/routes.dart';

class HomeProductListingScreen extends StatelessWidget {
  HomeProductListingScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.white700,
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildHeadingSection(context),
                buildCategoryGrid(context),
                SizedBox(height: 15),
                buildFeaturedProductsGrid(context),
                SizedBox(height: 15),
                SizedBox(
                  width: double.maxFinite,
                  child: buildItemsSection(
                    variations: "For you",
                    volume: "View all",
                  ),
                ),
                SizedBox(height: 12.0),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: buildBottomNavigationBar(context),
      ),
    );
  }
}

/// Section Widget
PreferredSizeWidget buildAppBar(BuildContext context) {
  return AppBar(
    title: SizedBox(
      width: double.maxFinite,
      child: AppBarLeading(
        image: AppAssets.imageCart,
        action: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}

/// Section Widget
Widget buildHeadingSection(BuildContext context) {
  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.only(
      left: 4.0,
      top: 4.0,
      bottom: 4.0,
    ),
    decoration: BoxDecoration(
      color: AppDecoration.outlineGray900,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 2.0),
        Text(
          "Heading: Alan Team",
          style: theme.textTheme.bodyMedium,
        ),
      ],
    ),
  );
}




/// Section Widget
Widget _buildCategorySlider(BuildContext context) {
  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.symmetric(
      horizontal: 4.0,
      vertical: 4.0,
    ),
    decoration: AppDecoration.fillInWhite,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10.0),
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(left: 16.0),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 1.0,
              initialPage: sliderIndex,
              onPageChanged: (index, reason) {
                // handle page change
              },
              height: 200.0, // Changed from sliderHeight to height
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return SliderFruitSliderWidget();
            },
          ),
        ),
        SizedBox(
          height: 8.0,
          child: AnimatedSmoothIndicator(
            count: 1,
            activeIndex: sliderIndex,
            effect: ExpandingDotsEffect(
              activeDotColor: Theme.of(context).colorScheme.primary,
              dotHeight: 4.0,
              dotWidth: 4.0,
            ),
          ),
        ),
      ],
    ),
  );
}

// Section Widget
Widget _buildVendorSlider(BuildContext context) {
  return Container(
    width: double.maxFinite,
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 122.0,
              autoPlay: true,
              enableInfiniteScroll: true,
              viewportFraction: 1.0,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                // handle page change
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return SliderGetIsSoftlyRoundedEdge();
            },
          ),
        ),
        SizedBox(
          height: 6.0,
          child: AnimatedSmoothIndicator(
            count: 1,
            activeIndex: sliderIndex,
            effect: ScrollingDotsEffect(
              spacing: 3.0,
              dotDirection: Axis.horizontal,
              activeDotColor: Theme.of(context).colorScheme.primary,
              dotHeight: 4.0,
              dotWidth: 8.0,
            ),
          ),
        ),
      ],
    ),
  );
}



/// Section Widget  
Widget _buildBaseSaleTimer(BuildContext context) {  
  return Container(  
    width: double.maxFinite,  
    margin: EdgeInsets.symmetric(horizontal: 20.0),  
    child: Row(  
      mainAxisAlignment: MainAxisAlignment.center,  
      children: [  
        Text(  
          'Flash Sale!',  
          style: CustomTextStyle.titleMediumUnichardGray900,  
        ),  
        Expanded(  
          child: Container(  
            padding: EdgeInsets.symmetric(horizontal: 6.0),  
            child: Column(  
              children: [  
                Container(  
                  margin: EdgeInsets.symmetric(  
                    horizontal: 12.0,  
                  ),  
                  decoration: BoxDecoration(  
                    color: AppDecoration.outlineGray900.copyWith(  
                      borderRadius: BorderRadiusStyle.roundedBorders,  
                    ),  
                  ),  
                  child: Text(  
                    'Text',  
                    style: CustomTextStyle.labelLargeArchivedPrimary,  
                  ),  
                ),  
                CustomCountdownWidget(  
                  imagePath: ImageConstant.imgGroup,  
                  height: 12.0,  
                  width: 12.0,  
                  margin: EdgeInsets.only(left: 4.0),  
                  child: Text(  
                    'Text',  
                    textAlign: TextAlign.center, // Corrected here
                  ),  
                ),  
                Container(  
                  margin: EdgeInsets.only(left: 4.0),  
                  padding: EdgeInsets.symmetric(  
                    vertical: 12.0,  
                  ),  
                  decoration: BoxDecoration(  
                    color: AppDecoration.outlineGray900.copyWith(  
                      borderRadius: BorderRadiusStyle.roundedBorders,  
                    ),  
                  ),  
                  child: Text(  
                    'Text',  
                    textAlign: TextAlign.center, // Corrected here
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
Widget _buildReusableList(BuildContext context) {  
  return Align(  
    alignment: Alignment.centerLeft,  
    child: Container(  
      margin: EdgeInsets.only(left: 20.0),  
      child: SingleChildScrollView(  
        scrollDirection: Axis.horizontal,  
        child: Row( // Changed Column to Row
          mainAxisSize: MainAxisSize.min, // Added for proper spacing
          children: List.generate(  
            5,  
            (index) {  
              return FreeDeliveryListItemWidget();  
            },  
          ).toList(),  
        ),  
      ),  
    ),  
  );  
}  

/// Section Widget  
Widget _buildFruitList(BuildContext context) {  
  return Container(  
    width: double.maxFinite,  
    margin: EdgeInsets.symmetric(horizontal: 20.0),  
    child: Column(  
      children: [  
        Container(  
          width: double.maxFinite,  
          margin: EdgeInsets.only(right: 8.0),  
          child: buildItemsSection(  
            volumeName: "Fruits",  
            volumeLine: "View all",  
          ),  
        ),  
        Container(  
          width: double.maxFinite,  
          child: SingleChildScrollView(  
            scrollDirection: Axis.horizontal,  
            child: Row( // Changed Column to Row
              children: List.generate(  
                5,  
                (index) {  
                  return ListDiagonalItemWidget();  
                },  
              ).toList(),  
            ),  
          ),  
        ),  
      ],  
    ),  
  );  
}  


/// Section Widget  
Widget _buildItemsList(BuildContext context) {  
  return Container(  
    width: double.maxFinite,  
    margin: EdgeInsets.symmetric(horizontal: 18.0),  
    child: Column(  
      children: [  
        Container(  
          width: double.maxFinite,  
          margin: EdgeInsets.only(right: 8.0),  
          child: buildItemsSection(  
            volumeName: "View Items",  
            volumeLine: "View all",  
          ),  
        ),  
        Container(  
          width: double.maxFinite,  
          child: SingleChildScrollView(  
            scrollDirection: Axis.horizontal,  
            child: Row(  // Changed Column to Row for horizontal scrolling
              children: List.generate(  
                2,  
                (index) {  
                  return ListButtonItemWidget();  
                },  
              ),  
            ),  
          ),  
        ),  
      ],  
    ),  
  );  
}  

/// Section Widget  
Widget buildFeaturedProductsGrid(BuildContext context) {  
  return Padding(  
    padding: EdgeInsets.symmetric(horizontal: 18.0),  
    child: ResponsiveGridList(  
      mainAxisCount: 2,  
      verticalGridMargin: 22.0,  
      horizontalGridMargin: 8.0,  
      children: List.generate(  
        items.length,  
        (index) {  
          return FeatureProductCardItemWidget();  
        },  
      ),  
    ),  
  );  
}  

/// Section Widget  
Widget buildBottomNavigationBar(BuildContext context) {  
  return SizedBox(  
    width: double.maxFinite,  
    child: GestureDetector(  // Removed redundant Container
      onTap: () {  
        Navigator.pushNamed(context, getCurrentRoute(type));  
      },  
      child: CustomBottomNavBar(),  
    ),  
  );  
}  


import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

/// Section Widget  
Widget buildFeaturedProductsGrid(BuildContext context) {  
  return Padding(  
    padding: EdgeInsets.symmetric(horizontal: 18.0),  
    child: ResponsiveGridList(  
      mainAxisCount: 2,  
      verticalGridMargin: 22.0,  
      horizontalGridMargin: 8.0,  
      children: List.generate(  
        items.length,  
        (index) {  
          return FeatureProductCardItemWidget();  
        },  
      ),  
    ),  
  );  
}  

/// Section Widget  
Widget buildBottomNavigationBar(BuildContext context) {  
  return SizedBox(  
    width: double.maxFinite,  
    child: GestureDetector(  
      onTap: () {  
        Navigator.pushNamed(context, getCurrentRoute(type));  
      },  
      child: CustomBottomNavBar(),  
    ),  
  );  
}  

/// Common Widget  
Widget buildItemsSection({  
  required BuildContext context, // Added required keyword
  required String volumeName,  
  required String volumeLine,  
}) {  
  return Row(  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,  
    children: [  
      Text(  
        volumeName,  
        style: CustomTextStyle.titleMediumUnichardGray900.copyWith(  
          color: appTheme.gray900,  
        ),  
      ),  
      Text(  
        volumeLine,  
        style: CustomTextStyle.bodyMediumPrimary.copyWith(  
          color: Theme.of(context).colorScheme.primary,  // Corrected theme to Theme.of(context)
        ),  
      ),  
    ],  
  );  
}  

/// Handling routes based on bottom click actions  
String getCurrentRoute(BottomEnum type) {  
  switch (type) {  
    case BottomEnum.Home:  
      return AppRouter.checkRouterInitialPage;  
    case BottomEnum.Deals:  
      return AppRouter.dealsPage;  
    case BottomEnum.Search:  
      return AppRouter.searchPage;  
    case BottomEnum.Cart:  
      return AppRouter.cartPage;  
    case BottomEnum.Account:  
      return AppRouter.accountPage;  
    default:
      return "";  // Added default case to handle any unexpected cases
  }  
}  


/// Section Widget  
Widget _buildItemsList(BuildContext context) {  
  return Container(  
    width: double.maxFinite,  
    margin: EdgeInsets.symmetric(horizontal: 18.0),  
    child: Column(  
      children: [  
        Container(  
          width: double.maxFinite,  
          margin: EdgeInsets.only(right: 8.0),  
          child: buildItemsSection(  
            context: context,  
            volumeName: "View Items",  
            volumeLine: "View all",  
          ),  
        ),  
        Container(  
          width: double.maxFinite,  
          child: SingleChildScrollView(  
            scrollDirection: Axis.horizontal,  
            child: Row(  // Changed Column to Row for horizontal scrolling
              children: List.generate(  
                5,  
                (index) {  
                  return ListButtonItemWidget();  
                },  
              ),  
            ),  
          ),  
        ),  
      ],  
    ),  
  );  
}  

/// Section Widget  
Widget _buildFeaturedProductsGrid(BuildContext context) {  
  return Padding(  
    padding: EdgeInsets.symmetric(horizontal: 18.0),  
    child: ResponsiveGridBuilder(  
      minItemsPerRow: 2,  
      maxItemsPerRow: 4,  
      horizontalSpacing: 22.0,  
      verticalSpacing: 12.0,  
      builder: (context, items) => ListView(  
        padding: EdgeInsets.zero,  
        physics: NeverScrollableScrollPhysics(),  
        children: [  
          ...List.generate(6, (index) {  // Corrected gridItems to List.generate
            return FeaturedProductsGridItemWidget();  
          }),  
        ],  
      ),  
    ),  
  );  
}  

/// Section Widget  
Widget _buildBottomNavigationBar(BuildContext context) {  
  return Container(  
    width: double.maxFinite,  
    child: CustomBottomBar(  
      onChanged: (ButtonEnum type) {  
        Navigator.pushNamed(  
          navigationKey.currentContext!, getCurrentRoute(type));  
      },  
    ),  
  );  
}  


/// Common Widget  
Widget _buildBottomItemsSection(  
  BuildContext context, {  
  required String itemsName,  
  required String valueName,  
}) {  
  return Row(  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,  
    children: [  
      Text(  
        itemsName,  
        style: CustomTextStyle.titleMediumunchuGrey900.copyWith(  
          color: theme.grey800,  // Corrected theme reference
        ),  
      ),  
      Text(  
        valueName,  
        style: CustomTextStyle.bodyMediumPrimary.copyWith(  
          color: Theme.of(context).colorScheme.primary,  // Corrected theme reference
        ),  
      ),  
    ],  
  );  
}  



/// Handling routes based on bottom click actions  
String getCurrentRoute(ButtonEnum type) {  
  switch (type) {  
    case ButtonEnum.Home:  
      return AppRoutes.checkOutCartInitialPage;  
    case ButtonEnum.Deals:  
      return AppRoutes.deals;  
    case ButtonEnum.Search:  
      return AppRoutes.search;  
    case ButtonEnum.Cart:  
      return AppRoutes.cart;  
    case ButtonEnum.Account:  
      return AppRoutes.account;  
    default:
      return "";  // Added default case to handle any unexpected cases
  }  
}  


class ExampleWidget extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Example'),  
      ),  
      body: Column(  
        children: [  
          Container(  
            padding: EdgeInsets.all(16.0),  
            child: Text(  
              'Hello, World!',  
              style: TextStyle(fontSize: 24),  
            ),  
          ),  
          Expanded(  
            child: ListView.builder(  
              itemCount: 10,  
              itemBuilder: (context, index) {  
                return ListTile(  
                  title: Text('Item $index'),  
                );  
              },  
            ),  
          ),  
        ],  
      ),  
    );  
  }  
}  

class MyHomePage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Home Page'),  
      ),  
      body: Center(  
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,  
          children: <Widget>[  
            Text(  
              'Welcome to my app!',  
              style: TextStyle(fontSize: 24),  
            ),  
            SizedBox(height: 20),  
            ElevatedButton(  
              onPressed: () {  
                // Navigate to another page  
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },  
              child: Text('Go to Next Page'),  
            ),  
          ],  
        ),  
      ),  
      floatingActionButton: FloatingActionButton(  
        onPressed: () {  
          // Action for the floating button  
        },  
        tooltip: 'Increment',  
        child: Icon(Icons.add),  
      ),  
    );  
  }  
}  

class SecondPage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Second Page'),  
      ),  
      body: Center(  
        child: Text(  
          'This is the second page!',  
          style: TextStyle(fontSize: 24),  
        ),  
      ),  
    );  
  }  
}  




class MyHomePage extends StatefulWidget {  
  @override  
  _MyHomePageState createState() => _MyHomePageState();  
}  

class _MyHomePageState extends State<MyHomePage> {  
  int _counter = 0;  

  void _incrementCounter() {  
    setState(() {  
      _counter++;  
    });  
  }  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Home Page'),  
      ),  
      body: Center(  
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,  
          children: <Widget>[  
            Text(  
              'You have pushed the button this many times:',  
            ),  
            Text(  
              '$_counter',  
              style: Theme.of(context).textTheme.headline4,  
            ),  
          ],  
        ),  
      ),  
      floatingActionButton: FloatingActionButton(  
        onPressed: _incrementCounter,  
        tooltip: 'Increment',  
        child: Icon(Icons.add),  
      ),  
    );  
  }  
}  



