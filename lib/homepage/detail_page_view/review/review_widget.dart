import 'package:flutter/material.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/homepage/detail_page_view/review/review_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _PhotoNameLb(),
      ],
    );
  }
}

class _PhotoNameLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return Container();
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
        return Container();
      } else {
        return _PhotoName(
          heightOFWidth: 20.0,
          heightOfImage: 20.0,
        );
      }
    });
  }
}

class _PhotoName extends StatelessWidget {
//  double fontSizeOfText;
//  double itemHeight;
//  double sizeOfIcon;
//  double marginTopItem;
//  double leftMarginFromText;
  double heightOfImage;
  double heightOFWidth;

  _PhotoName({this.heightOfImage, this.heightOFWidth});

  ReviewViewModel reviewViewModel = ReviewViewModel();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .95,
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            // image
            Container(
              margin: EdgeInsets.only(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  reviewViewModel.list[0].networkImagePath,
                  fit: BoxFit.cover,
                  height: heightOfImage,
                  width: heightOFWidth,
                ),
              ),
            ),
            // name and reviews
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 0),
                  child: Text(
                    reviewViewModel.list[0].name,
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0),
                  child: Text(
                    "45 reviews, 210 reviews",
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            /*    OutlineButton(
              borderSide: BorderSide(
                color: Colors.green

              ),
              shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
    side: BorderSide(color: Colors.green,
    width: 10.0)
    ),
                color: ColorConstant.buttonColor,
                child: Center(
                  child: Text(
                    "Follow",
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: ColorConstant.buttonColor,
                      fontSize: 17,
                    ),
                  ),
                )),*/
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: ColorConstant.buttonColor),
              ),
              child: Center(
                child: Text(
                  "Follow",
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              color: Colors.transparent,

            )
          ],
        ));
  }
}
