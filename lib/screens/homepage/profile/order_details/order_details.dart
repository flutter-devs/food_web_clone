import 'package:flutter/material.dart';
import 'package:food_web_clone/screens/homepage/homepage_view_model.dart';
import 'package:food_web_clone/screens/homepage/profile/edit_profile/edit_prrofile_widgets.dart';
import 'package:food_web_clone/screens/homepage/profile/order_details/order_detail_widgets.dart';

class OrderDetails extends StatelessWidget {

  HomePageViewModel homePageViewModel = HomePageViewModel();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _CustomAppBar(),
              _orderViewLb(),

            ],
          ),
        ),
      ),
    );
  }
}

class _orderViewLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return OrderDetailView(
              alignment: Alignment.center,
              heightOfImage: 300.0,
              marginTopItem: 30.0,
              fontSizeOfButtonText: 20.0,
              widthOfImage: size.width*.5,
              fontSizeOfDishName: 22.0,
              marginBetweenInfoTile: 15.0,
              fontSizeOFTotalText: 24.0,
              fontSizeOfImageText: 24.0,
              heightOFQuantityBox: 35.0,
              widthOfQuantityBox: 35.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return OrderDetailView(
              heightOfImage: 250.0,
              marginTopItem: 30.0,
              fontSizeOfButtonText: 18.0,
              widthOfImage: size.width*.8,
              fontSizeOfDishName: 18.0,
              marginBetweenInfoTile: 8.0,
              fontSizeOFTotalText: 20.0,
              fontSizeOfImageText: 22.0,
              heightOFQuantityBox: 30.0,
              widthOfQuantityBox: 30.0,
            );
          }
          else
          {
            return OrderDetailView(
              heightOfImage: 200.0,
              marginTopItem: 20.0,
              fontSizeOfButtonText: 14.0,
              widthOfImage: size.width*.9,
             // widthOfImage: 300.0,
              fontSizeOfDishName: 16.0,
              marginBetweenInfoTile: 5.0,
              fontSizeOFTotalText: 18.0,
              fontSizeOfImageText: 20.0,
              heightOFQuantityBox: 25.0,
              widthOfQuantityBox: 25.0,
            );
          }

        }
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return CustomAppBarEditProfile(
              marginFromTop: 35.0,
              fontSizeOfDone: 20.0,
              fontSizeOfEditProfile: 32.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 22.0,
              headingText: "Order Details",
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
            return CustomAppBarEditProfile(
              marginFromTop: 30.0,
              fontSizeOfDone: 18.0,
              fontSizeOfEditProfile: 28.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 18.0,
              headingText: "Order Details",
            );
          } else {
            return CustomAppBarEditProfile(
              marginFromTop: 20.0,
              fontSizeOfDone: 16.0,
              fontSizeOfEditProfile: 20.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 16.0,
              headingText: "Order Details",
            );
          }
        });
  }
}
