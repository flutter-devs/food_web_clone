import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/homepage/detail_page_view/detailpage_view.dart';
import 'package:food_web_clone/screens/homepage/homepage_view_model.dart';


class PopularRestaurantsList extends StatelessWidget
{

  var imageWidth;
var imageHeight;
var cardSymetricMArgin;
var heightOfView;
var marginOfItem;


  PopularRestaurantsList(
  { this.imageWidth,
    this.imageHeight,
    this.cardSymetricMArgin,
    this.heightOfView,
    this.marginOfItem,
});

  HomePageViewModel homePageViewModel = HomePageViewModel();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.97,
      margin: EdgeInsets.only(top: marginOfItem, bottom: marginOfItem),
      alignment: Alignment.center,
      height: heightOfView,
      child: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPageView(
                              imagePath: homePageViewModel.listOfImages[index],
                              headingText: homePageViewModel
                                  .listOfMostPopularModel[index].dishName,
                            ))),
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: cardSymetricMArgin),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          homePageViewModel.listOfImages[index],
                          width: imageWidth + 20,
                          height: imageHeight,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }

}

class MostPopularList extends StatelessWidget {
  var imageWidth;
  var imageHeight;
  var marginFromTop;
  var marginFromLeft;
  var fontSize;
  var maxWidthOfAddress;
  var marginFromBottom;
  var fontSizeOfAdress;
  var marginFromTopAdress;
  var cardSymetricMArgin;
  var heightOfView;
  var marginOfItem;

  MostPopularList(
  {  this.imageWidth,
    this.imageHeight,
    this.marginFromTop,
    this.marginFromLeft,
    this.fontSize,
    this.maxWidthOfAddress,
    this.marginFromBottom,
    this.fontSizeOfAdress,
    this.marginFromTopAdress,
    this.cardSymetricMArgin,
    this.heightOfView,
    this.marginOfItem
  });

  HomePageViewModel homePageViewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.94,
      margin: EdgeInsets.only(top: marginOfItem),
      alignment: Alignment.center,
     height: heightOfView,
     child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
         shrinkWrap: true,
         itemCount: 10,
         scrollDirection: Axis.horizontal,
         itemBuilder: (context, index) =>
             Padding(
               padding: const EdgeInsets.only(bottom: 1),
               child: Card(
                 elevation: 0,
                 margin: EdgeInsets.symmetric(horizontal: cardSymetricMArgin),
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(8.0))),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     ClipRRect(
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(8.0),
                         topRight: Radius.circular(8.0),
                       ),
                       child: InkWell(
                         onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (
                               context) =>
                               DetailPageView(
                                 imagePath: homePageViewModel
                                     .listOfImages[index],
                                 headingText: homePageViewModel
                                     .listOfMostPopularModel[index].dishName,
                               )));
                         },
                         child: Image.asset(
                           homePageViewModel.listOfImages[index],
                           width: imageWidth + 20,
                           height: imageHeight,
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     CustomTextView(
                       marginFromTop: marginFromTop,
                       text: homePageViewModel.listOfMostPopularModel[index]
                           .dishName,
                       maxWidth: imageWidth,
                       alignment: Alignment.topLeft,
                       marginFromLeft: marginFromLeft,
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: fontSize,
                     ),
                     Container(
                       alignment: Alignment.topLeft,
                       width: maxWidthOfAddress,
                       margin: EdgeInsets.only(
                           bottom: marginFromBottom, top: marginFromTopAdress),
                       child: Text(
                         homePageViewModel.listOfMostPopularModel[index].adress,
                         textAlign: TextAlign.left,
                         // maxLines: 2,
                         style: TextStyle(
                           color: Colors.grey,
                           fontWeight: FontWeight.bold,
                           fontSize: fontSizeOfAdress,
                         ),
                       ),
                     ),


                   ],
                 ),
               ),
             )),
   );
  }
}

class MealsDealList extends StatelessWidget {
  var imageWidth;

  var marginFromTop;
  var marginFromLeft;
  double fontSize;
  var maxWidthOfAddress;
  var marginFromBottom;
  var fontSizeOfAdress;
  var marginFromTopAdress;
  var cardSymetricMArgin;
  var heightOfView;
  var marginOfItem;
 var bottomPositionedPlaces;
 var bottomPositionedDish;
 var marginFromLeftYellowHighlighter;

  MealsDealList(
  {
    this.imageWidth,

    this.marginFromTop,
    this.marginFromLeft,
    this.fontSize,
    this.heightOfView,
    this.maxWidthOfAddress,
    this.marginFromBottom,
    this.fontSizeOfAdress,
    this.marginFromTopAdress,
    this.cardSymetricMArgin,
    this.marginOfItem,
    this.bottomPositionedPlaces,
    this.bottomPositionedDish,
    this.marginFromLeftYellowHighlighter
  });

  HomePageViewModel homePageViewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width*0.94,
      margin: EdgeInsets.only(top: marginOfItem),
      alignment: Alignment.center,
    height: heightOfView,
     child: ListView.builder(
      //   physics: NeverScrollableScrollPhysics(),
         shrinkWrap: true,
         itemCount: 10,
         scrollDirection: Axis.horizontal,
         itemBuilder: (context , index)=>Card(
           margin: EdgeInsets.symmetric(horizontal: cardSymetricMArgin),
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(8.0))),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               ClipRRect(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(8.0),
                   topRight: Radius.circular(8.0),
                 ),
                 child: Stack(
                  // fit: StackFit.expand,
                   children: <Widget>[
                     InkWell(
                       onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPageView(
                         imagePath:  homePageViewModel.listOfMealsDeals[index],
                         headingText:  homePageViewModel.listOfMostPopularModel[index].dishName,
                       ))),
                       child: Image.asset(
                         homePageViewModel.listOfMealsDeals[index],
                         width: imageWidth+10,
                         height: heightOfView,
                         fit: BoxFit.cover,
                       ),
                     ),

                     Positioned(
                       child:  Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Container(
                              height: 4.0,
                             width: 70,
                             margin: EdgeInsets.only(left: marginFromLeftYellowHighlighter),
                             alignment: Alignment.topLeft,
                             decoration: BoxDecoration(
                               color: Colors.yellow,
                               borderRadius: BorderRadius.circular(20.0),
                             ),
                           ),
                           CustomTextView(
                             marginFromTop: marginFromTop,
                             text: homePageViewModel.listOfMostPopularModel[index].dishName,
                             maxWidth: imageWidth,
                             alignment: Alignment.topLeft,
                             marginFromLeft: marginFromLeft,
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: fontSize,
                           ),
                         ],
                       ),
                       left: 4,
                       bottom: bottomPositionedDish,

                     ),
                      Positioned(
                       child:  CustomTextView(
                         marginFromTop: marginFromTop,
                         text: "12 Places",
                         maxWidth: imageWidth,
                         alignment: Alignment.topLeft,
                         marginFromLeft: marginFromLeft,
                         color: Colors.white,
                         fontSize: fontSizeOfAdress,
                       ),
                        left: 4,
                       bottom: bottomPositionedPlaces,

                     ),

                   ],
                 ),
               ),





             ],
           ),
         )),
   );
  }
}


