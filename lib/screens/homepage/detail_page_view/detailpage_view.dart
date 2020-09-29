import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/homepage/detail_page_view/detail_page_view_widgets.dart';
import 'package:food_web_clone/screens/homepage/detail_page_view/review/review_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPageView extends StatelessWidget {

  String imagePath;
  String headingText;

  DetailPageView({this.imagePath, this.headingText});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeadingBarDetailPageViewLb(imagePath: imagePath,headingText: headingText,),
              OrderFoodDeliveryButtonLb(),
             ShareReviewPhotoLb(),
             _AdressLb(),
              callText(size,"Call","+61123456789"),
              callText(size,"Cuisines","Australian, Cafe"),
              callText(size,"Average Cost","+61123456789"),
              SizedBox(height: 20,),
              callText(size,"Photos","+ Add"),
              PhotosItemLb(),
              Card(
                margin: EdgeInsets.only(bottom: 10.0),
                  child: Review(index: 0,)),
              Card(
                margin: EdgeInsets.only(bottom: 10.0),
                  child: Review(index: 1,)),
            ],
          ),
        ),
      ),
    );
  }

  callText(Size size , String text_1, String text_2) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return mostPopularSeeAllTextRow(
                text_1: text_1,
                text_2: text_2,
                fontSizeF: 21.0, fontSizeS: 18, marginFromTop: 20.0);
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
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
                color: Colors.grey,
                fontSize: fontSizeF,
                fontWeight: FontWeight.bold),
          ),
          Text(
            text_2,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontStyle: FontStyle.normal,
              color: ColorConstant.buttonColor,
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



class PhotosItemLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return PhotsItem(
              marginTopItem: 16.0,
              fontSizeOfText: 22.0,
              fontSizeOFttextNumber: 18.0,
              heightOfImage: 180.0,
              heightOFWidth: 250.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return PhotsItem(
              marginTopItem: 12.0,
              fontSizeOfText: 20.0,
              fontSizeOFttextNumber: 16.0,
              heightOfImage: 120.0,
              heightOFWidth: 170.0,
            );
          }
          else
          {
            return PhotsItem(
              marginTopItem: 8.0,
              fontSizeOfText: 16.0,
              fontSizeOFttextNumber: 14.0,
              heightOfImage: 90.0,
               heightOFWidth: 90.0,
            );
          }

        }
    );
  }
}

class _AdressLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return AdressDetailPageWidget(
              sizeOfIcon: 28.0,
              itemHeight: 200.0,
              fontSizeOfText: 24,
              marginTopItem: 20.0,
              leftMarginFromText: 35.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return AdressDetailPageWidget(
              sizeOfIcon: 24.0,
              itemHeight: 170.0,
              fontSizeOfText: 20,
              marginTopItem: 15.0,
              leftMarginFromText: 25.0,
            );
          }
          else
          {
            return AdressDetailPageWidget(
              sizeOfIcon: 24.0,
              itemHeight: 100.0,
              fontSizeOfText: 16,
              marginTopItem: 0.0,
              leftMarginFromText: 20.0,
            );
          }

        }
    );
  }
}

class ShareReviewPhotoLb extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(
       builder: (BuildContext context, BoxConstraints constraints) {
         if(constraints.maxWidth > 1200.0) {
           return ShareReviewPhoto(
             fontSizeText: 24,
             topMargin: 20,
             fontSizeOFIcon: 34,
           );
         }
         else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
           return ShareReviewPhoto(
             fontSizeText: 18,
             topMargin: 10,
             fontSizeOFIcon: 30,
           );
         }
         else
         {
           return ShareReviewPhoto(
            fontSizeText: 14,
             topMargin: 5.0,
             fontSizeOFIcon: 24,
           );
         }

       }
   );
  }
}

class OrderFoodDeliveryButtonLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return OrderFoodDeliveryButton(
              fontSizeText: 23.0,
              heightOFButton: 65.0,
              maxWidth: 250.0,
              marginFromTop: 20.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return OrderFoodDeliveryButton(
              fontSizeText: 20.0,
              heightOFButton: 60.0,
              marginFromTop: 10.0,
              maxWidth: 200.0,
            );
          }
          else
          {
            return OrderFoodDeliveryButton(
              fontSizeText: 17.0,
              heightOFButton: 45.0,
             maxWidth: size.width,
            );
          }

        }
    );
  }
}



class HeadingBarDetailPageViewLb extends StatelessWidget{
  String imagePath;
  String headingText;

  HeadingBarDetailPageViewLb({this.imagePath, this.headingText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   return LayoutBuilder(
       builder: (BuildContext context, BoxConstraints constraints) {
         if (constraints.maxWidth > 1200.0) {
           return HeadingBarDetailPageView(
             headingText: headingText,
             imagePath: imagePath,
             heightOfImage: size.height*.45,
             fontSizeOfBackArrow: 32,
             fontSizeOfTitleText: 35,
             positionedLeftIcon: 22,
             positionedtopIcon: 50,
             positionedLeftTitle: 22,
             postionedBottomTitle: 45,
             maxWidthOfText: 240,
             alignment: Alignment.center,

           );
         }
         else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
           return HeadingBarDetailPageView(
             headingText: headingText,
             imagePath: imagePath,
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

           return HeadingBarDetailPageView(
             headingText: headingText,
             imagePath: imagePath,
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


