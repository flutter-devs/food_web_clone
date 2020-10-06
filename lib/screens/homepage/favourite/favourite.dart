
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/homepage/detail_page_view/detailpage_view.dart';
import 'package:food_web_clone/screens/homepage/homepage_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
body: Column(
  children: <Widget>[
      HeadingFavouriteText(),
          Expanded(
            child: ListView.builder(
               // physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
             itemCount: 3,
            itemBuilder: (context , index)=>WishListItemLb()),
          ),
  ],
),


      ),
    );
  }
}


class HeadingFavouriteText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return CustomTextView(fontSize: 55.0,marginFromTop: 50.0,color: Colors.black,text: "Favourite",marginFromBottom: 50.0,alignment: Alignment.topLeft,marginFromLeft: 50.0);
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return CustomTextView(fontSize: 45.0,marginFromTop: 30.0,color: Colors.black,text: "Favourite",marginFromBottom: 30.0,fontWeight: FontWeight.bold,);
          }
          else
          {
            return CustomTextView(fontSize: 20.0,marginFromTop: 20.0,color: Colors.black,text: "Favourite",marginFromBottom: 20.0,fontWeight: FontWeight.bold,);
          }

        }
    );
  }
}

class WishListItemLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return WishListItem(
              allItemPadding: 7.0,
              heightOfCardView: 160.0,
              heightOfImage:  140.0,
              widthOfImage: 140.0,
              heightOfRating: 30.0,
              widthOfRating: 30.0,
              marginFromLeft: 25.0,
              widthOfGoodThaiRow: 230.0,
              fontSizeOfDishName: 22.0,
              fontSizeOFTime: 18.0,
              fontSizeOfAdress: 18.0,
              fontSizeOfLandmark: 18.0,
              fontSizeOFBookMark: 32,
              marginBetweenItem: 12.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return WishListItem(
              allItemPadding: 10.0,
              heightOfCardView: 140.0,
              heightOfImage:  120.0,
              widthOfImage: 120.0,
              heightOfRating: 45.0,
              widthOfRating: 45.0,
              marginFromLeft: 25.0,
              widthOfGoodThaiRow: 185.0,
              fontSizeOfDishName: 22.0,
              fontSizeOFTime: 16.0,
              fontSizeOfAdress: 16.0,
              fontSizeOfLandmark: 16.0,
              fontSizeOFBookMark: 28,
              marginBetweenItem: 8.0,
            );
          }
          else
          {
            return WishListItem(
              allItemPadding: 7.0,
              heightOfCardView: 120.0,
              heightOfImage:  90.0,
              widthOfImage: 90.0,
              heightOfRating: 30.0,
              widthOfRating: 30.0,
              marginFromLeft: 25.0,
              widthOfGoodThaiRow: 150.0,
              fontSizeOfDishName: 18.0,
              fontSizeOFTime: 14.0,
              fontSizeOfAdress: 12.0,
              fontSizeOfLandmark: 14.0,
              fontSizeOFBookMark: 24,
              marginBetweenItem: 4.0,
            );
          }

        }
    );
  }
}

class WishListItem extends StatelessWidget {

  double heightOfImage;
  double widthOfImage;
  double marginFromLeft;
  double allItemPadding;
  double heightOfRating;
  double widthOfRating;
  double heightOfCardView;
 double  widthOfGoodThaiRow;
 double fontSizeOfDishName;
 double fontSizeOFTime;
 double fontSizeOfAdress;
 double fontSizeOfLandmark;
 double fontSizeOFBookMark;
 double marginBetweenItem;


  WishListItem(
  { this.heightOfImage,
    this.widthOfImage,
    this.marginFromLeft,
    this.allItemPadding,
    this.heightOfRating,
    this.widthOfRating,
    this.heightOfCardView,
    this.widthOfGoodThaiRow,
    this.fontSizeOfDishName,
    this.fontSizeOFTime,
    this.fontSizeOfAdress,
    this.fontSizeOfLandmark,
  this.fontSizeOFBookMark,
  this.marginBetweenItem});

  HomePageViewModel _homePageViewModel = HomePageViewModel();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPageView(
                            imagePath: _homePageViewModel.listOfImages[index],
                            headingText: _homePageViewModel
                                .listOfFavouriteFoodItems[index],
                          ))),
              child: Card(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: marginBetweenItem),
                  height: heightOfCardView,
                  width: size.width,
                  padding: EdgeInsets.all(allItemPadding),
                  child: Row(
                    children: <Widget>[
                      // image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          _homePageViewModel.listOfImages[index],
                          height: heightOfImage,
                          width: widthOfImage,
                          fit: BoxFit.cover,
                        ),
                      ),

                      //
                      Container(
                        margin: EdgeInsets.only(left: marginFromLeft),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: size.width - widthOfGoodThaiRow,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: 0),
                                    child: Text(
                                      _homePageViewModel
                                          .listOfFavouriteFoodItems[index],
                                      style: GoogleFonts.lato(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black,
                                          fontSize: fontSizeOfDishName,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    height: heightOfRating,
                                    width: widthOfRating,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      _homePageViewModel
                                              .listOfFavouriteFoodItemsRating[
                                          index],
                                      style: GoogleFonts.lato(
                                          fontStyle: FontStyle.normal,
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // time text
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              child: Text(
                                "11:30AM to 11:00PM",
                                style: GoogleFonts.lato(
                                    fontStyle: FontStyle.normal,
                                    color: Colors.grey,
                                    fontSize: fontSizeOFTime),
                              ),
                            ),
                            //adress
                            Container(
                              width: size.width - widthOfGoodThaiRow,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 0),
                                        child: Text(
                                          _homePageViewModel
                                              .listOfMostPopularModel[index]
                                              .adress,
                                          style: GoogleFonts.lato(
                                              fontStyle: FontStyle.normal,
                                              color: Colors.grey,
                                              fontSize: fontSizeOfAdress),
                                        ),
                                      ),

                                      // Asia, Thai Text
                                      Container(
                                        margin: EdgeInsets.only(left: 0),
                                        child: Text(
                                          "Asia Thai ",
                                          style: GoogleFonts.lato(
                                              fontStyle: FontStyle.normal,
                                              color: Colors.grey,
                                              fontSize: fontSizeOfLandmark),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // book mark icon
                                  Container(
                                    margin: EdgeInsets.only(left: 9),
                                    child: Icon(
                                      Icons.bookmark,
                                      size: fontSizeOFBookMark,
                                      color: Colors.lightBlue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
