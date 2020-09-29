import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/homepage/favourite/favourite.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingPage extends  StatelessWidget
{



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeadingBarTrendingPageViewLb(),
            mostPopularSeeAllTextRowLb(size,"20 Restaurants" ,"Filter"),
          //  HeadingTrendingText(),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context , index)=>WishListItemLb()),
          ],
        ),
      ),

    );

  }
  mostPopularSeeAllTextRowLb(Size size , String text_1, String text_2) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return mostPopularSeeAllTextRow(
                text_1: text_1,
                text_2: text_2,
                fontSizeF: 21.0, fontSizeS: 18, marginFromTop: 20.0);
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
            return mostPopularSeeAllTextRow(
                text_1: text_1,
                text_2: text_2,
                fontSizeF: 18.0, fontSizeS: 16.0, marginFromTop: 15.0);
          } else {
            return mostPopularSeeAllTextRow(
                text_1: text_1,
                text_2: text_2,
                fontSizeF: 15.0, fontSizeS: 14.0, marginFromTop: 10.0);
          }
        });
  }
  mostPopularSeeAllTextRow({var fontSizeF, var fontSizeS, var marginFromTop , String text_1, String text_2}) {
    return Builder(builder: (context)=>Container(
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width * 0.96,
      margin: EdgeInsets.only(top: marginFromTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text_1,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: fontSizeF,
                fontWeight: FontWeight.bold),
          ),
          Text(
            text_2,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontStyle: FontStyle.normal,
              color: Colors.green,
              fontSize: fontSizeF,
            ),
          ),
//        CustomTextView(
//          fontSize: fontSizeS,
//          marginFromTop: 15,
//          color: Colors.green,
//          text: "See App",
//        ),
        ],
      ),
    ),);
  }

}
class HeadingTrendingText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return CustomTextView(fontSize: 55,marginFromTop: 50,color: Colors.black,text: "Trending",marginFromBottom: 50,alignment: Alignment.topLeft,marginFromLeft: 50);
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return CustomTextView(fontSize: 45,marginFromTop: 30,color: Colors.black,text: "Trending",marginFromBottom: 30,alignment: Alignment.topLeft,marginFromLeft: 30);
          }
          else
          {
            return CustomTextView(fontSize: 35,marginFromTop: 20.0,color: Colors.black,text: "Trending",marginFromBottom: 20.0,alignment: Alignment.topLeft,marginFromLeft: 10.0);
          }

        }
    );
  }
}
class HeadingBarTrendingPageViewLb extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return HeadingBarTrendingPageView(

              heightOfImage: size.height*.45,
              fontSizeOfBackArrow: 32,
              fontSizeOfTitleText: 35,
              positionedLeftIcon: 22,
              positionedtopIcon: 50,
              positionedLeftTitle: 22,
              postionedBottomTitle: 45,
              maxWidthOfText: 240,

            );
          }
          else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
            return HeadingBarTrendingPageView(

              heightOfImage: size.height*.40,
              fontSizeOfBackArrow: 28,
              fontSizeOfTitleText: 28,
              positionedLeftIcon: 15,
              positionedtopIcon: 50,
              positionedLeftTitle: 15,
              postionedBottomTitle: 35,
              maxWidthOfText: 200,

            );
          }
          else {

            return HeadingBarTrendingPageView(
              heightOfImage: size.height*.35,
              //  heightOfImage: Dimensions(context).boxHeight*.35,
              fontSizeOfBackArrow: 24,
              fontSizeOfTitleText: 25,
              positionedLeftIcon: 10,
              positionedtopIcon: 40,
              positionedLeftTitle: 10,
              postionedBottomTitle: 20,
              maxWidthOfText: 150,

            );
          }
        }
    );
  }
}

class HeadingBarTrendingPageView extends StatelessWidget {

  double fontSizeOfBackArrow;
  var heightOfImage;
  double fontSizeOfTitleText;
  double postionedBottomTitle;
  double positionedLeftTitle;
  double positionedLeftIcon;
  double positionedtopIcon;
  double maxWidthOfText;

  HeadingBarTrendingPageView(
      {this.fontSizeOfBackArrow,
        this.heightOfImage,
        this.fontSizeOfTitleText,
        this.postionedBottomTitle,
        this.positionedLeftTitle,
        this.positionedLeftIcon,
        this.positionedtopIcon,
        this.maxWidthOfText,
     });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 0),
          child: Image.asset(
           "assets/food/dish_1.jpg",
            fit: BoxFit.cover,
            height: heightOfImage,
            width: size.width,
          ),
        ),
        // back arrow
        Positioned(
          left: positionedLeftIcon,
          top: positionedtopIcon,
          child: Container(
            margin: EdgeInsets.only(left: 19),
            child: InkWell(
              onTap: ()=> Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_back,
                size: fontSizeOfBackArrow,
                color: Colors.white,
              ),
            ),
          ),
        ),
        // title Text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: heightOfImage,
              width: maxWidthOfText,
              alignment: Alignment.center,
              child: Text(
               "Asian Restaurants",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: fontSizeOfTitleText,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
