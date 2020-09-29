import 'package:flutter/material.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/homepage/detail_page_view/review/review_view_model.dart';
import 'package:food_web_clone/screens/homepage/homepage_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  int index;

  Review({this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _PhotoNameLb(index: index,),
        _StarThumbsUpRowLb(),
        _ReviewTextLb(),
        _PhotoCollectionLb(),
      ],
    );
  }
}

class _PhotoCollectionLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return _PhotoCollection(
          heightOfImage: 150.0,
          heightOFWidth: 150.0,
          marginTopItem: 20,
          marginFromBottom: 30.0,
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return _PhotoCollection(
          heightOfImage: 120.0,
          heightOFWidth: 120.0,
          marginTopItem: 15,
          marginFromBottom: 20,
        );
      } else {
        return _PhotoCollection(
          heightOfImage: 90.0,
          heightOFWidth: 90.0,
          marginTopItem: 7.0,
          marginFromBottom: 10.0,
        );
      }
    });
  }
}

class _PhotoCollection extends StatelessWidget {
//  double fontSizeOfText;
//  double itemHeight;
//  double sizeOfIcon;
 double marginTopItem;
 double marginFromBottom;
//  double leftMarginFromText;
  double heightOfImage;
  double heightOFWidth;

  _PhotoCollection({this.heightOfImage, this.heightOFWidth , this.marginTopItem , this.marginFromBottom});

  // ReviewViewModel reviewViewModel = ReviewViewModel();
  HomePageViewModel homePageViewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTopItem ,bottom: marginFromBottom),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          photoView(0),
          photoView(1),
          photoView(2),
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  homePageViewModel.listOfImages[3],
                  fit: BoxFit.cover,
                  height: heightOfImage,
                  width: heightOFWidth,
                  colorBlendMode: BlendMode.darken,
                  color: Colors.red.withOpacity(0.7),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: heightOFWidth,
                height: heightOfImage,
                child: Container(

                  margin: EdgeInsets.only(left: 0),
                  child: Text(
                    "+12",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  photoView(index) => Container(
        margin: EdgeInsets.only(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.network(
            homePageViewModel.listOfImages[index],
            fit: BoxFit.cover,
            height: heightOfImage,
            width: heightOFWidth,
          ),
        ),
      );
}

class _ReviewTextLb extends StatelessWidget {
  ReviewViewModel reviewViewModel = ReviewViewModel();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return _ReviewText(
          reviewViewModel: reviewViewModel,
          fontSizeOfText: 22.0,
          marginFromTop: 10.0,
          maxWidth: size.width * .8,
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return _ReviewText(
          reviewViewModel: reviewViewModel,
          fontSizeOfText: 18.0,
          marginFromTop: 10.0,
          maxWidth: size.width * .8,
        );
      } else {
        return _ReviewText(
          reviewViewModel: reviewViewModel,
          fontSizeOfText: 16.0,
          marginFromTop: 10.0,
          maxWidth: size.width * .8,
        );
      }
    });
  }
}

class _ReviewText extends StatelessWidget {
  final ReviewViewModel reviewViewModel;
  double marginFromTop;
  double fontSizeOfText;
  var maxWidth;

  _ReviewText(
      {this.reviewViewModel,
      this.marginFromTop,
      this.fontSizeOfText,
      this.maxWidth});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          width: maxWidth,
          margin: EdgeInsets.only(top: marginFromTop, left: 20.0),
          child: Text(
            reviewViewModel.list[0].description,
            textAlign: TextAlign.left,
            maxLines: 4,
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.grey,
                fontSize: fontSizeOfText,
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}

class _StarThumbsUpRowLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return _StarThumbsUpRow(
          fontSizeOFStarIcon: 32.0,
          fontSizeOFCommentIcon: 32.0,
          fontSizeOFRating: 18.0,
          fontSizeOFThumbsUpIcon: 32.0,
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return _StarThumbsUpRow(
          fontSizeOFStarIcon: 28.0,
          fontSizeOFCommentIcon: 28.0,
          fontSizeOFRating: 16.0,
          fontSizeOFThumbsUpIcon: 28.0,
        );
      } else {
        return _StarThumbsUpRow(
          fontSizeOFStarIcon: 24.0,
          fontSizeOFCommentIcon: 24.0,
          fontSizeOFRating: 14.0,
          fontSizeOFThumbsUpIcon: 24.0,
        );
      }
    });
  }
}

class _StarThumbsUpRow extends StatelessWidget {
  double fontSizeOFStarIcon;
  double fontSizeOFRating;
  double fontSizeOFThumbsUpIcon;
  double fontSizeOFCommentIcon;

  _StarThumbsUpRow(
      {this.fontSizeOFStarIcon,
      this.fontSizeOFRating,
      this.fontSizeOFThumbsUpIcon,
      this.fontSizeOFCommentIcon});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .95,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // star
          Container(
            height: 30,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        Icons.star,
                        size: fontSizeOFStarIcon,
                        color: ColorConstant.buttonColor,
                      ),
                    )),
          ),
          // empty star
          Container(
            margin: EdgeInsets.only(left: 0),
            child: Icon(
              Icons.star_border,
              size: fontSizeOFStarIcon,
              color: ColorConstant.buttonColor,
            ),
          ),

          // text
          Container(
            margin: EdgeInsets.only(top: 5.0, left: 5.0),
            child: Text(
              "4.0",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  color: ColorConstant.buttonColor,
                  fontSize: fontSizeOFRating),
            ),
          ),

          Spacer(),
          // thumbsUpIcon
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.thumb_up,
              size: fontSizeOFThumbsUpIcon,
              color: ColorConstant.buttonColor,
            ),
          ),
          // icom comment
          Container(
            margin: EdgeInsets.only(left: 0),
            child: Icon(
              Icons.message,
              size: fontSizeOFCommentIcon,
              color: ColorConstant.buttonColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _PhotoNameLb extends StatelessWidget {
  int index;

  _PhotoNameLb({this.index});
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return _PhotoName(
          heightOFWidth: 80.0,
          heightOfImage: 80.0,
          index: index,
          fontSizeOfDesText: 16,
          fontSizeOfNameText: 22,
          heightOfButton: 40,
          fontSizeOfButtonText: 18,
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return _PhotoName(
          heightOFWidth: 60.0,
          heightOfImage: 60.0,
          index: index,
          fontSizeOfDesText: 14,
          fontSizeOfNameText: 18,
          heightOfButton: 38,
          fontSizeOfButtonText: 18,
        );
      } else {
        return _PhotoName(
          heightOFWidth: 45.0,
          heightOfImage: 45.0,
          index: index,
          fontSizeOfDesText: 12,
          fontSizeOfNameText: 16,
          heightOfButton: 35,
          fontSizeOfButtonText: 15,
        );
      }
    });
  }
}

class _PhotoName extends StatelessWidget {
  @required
  double fontSizeOfDesText;
  @required
  double fontSizeOfNameText;
  @required
  double heightOfButton;

//  double itemHeight;
//  double sizeOfIcon;
//  double marginTopItem;
//  double leftMarginFromText;
  @required
  double heightOfImage;
  @required
  double heightOFWidth;
  @required
  int index;
  double fontSizeOfButtonText;

  _PhotoName(
      {this.heightOfImage,
      this.heightOFWidth,
      this.index,
      this.fontSizeOfDesText,
      this.fontSizeOfNameText,
      this.heightOfButton,
      this.fontSizeOfButtonText});

  ReviewViewModel reviewViewModel = ReviewViewModel();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .97,
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            // image
            Container(
              margin: EdgeInsets.only(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: Image.network(
                  reviewViewModel.list[index].networkImagePath,
                  fit: BoxFit.cover,
                  height: heightOfImage,
                  width: heightOFWidth,
                ),
              ),
            ),
            // name and reviews
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    child: Text(
                      reviewViewModel.list[index].name,
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: fontSizeOfNameText,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0),
                    child: Text(
                      "45 reviews, 210 reviews",
                      style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: fontSizeOfDesText,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              height: heightOfButton,
              child: OutlineButton(
                  onPressed: () {},
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  highlightedBorderColor: ColorConstant.buttonColor,
                  visualDensity: VisualDensity(horizontal: 2.0, vertical: 2.0),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: ColorConstant.buttonColor,
                  child: Text(
                    "Follow",
                    style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: ColorConstant.buttonColor,
                      fontSize: fontSizeOfButtonText,
                    ),
                  )),
            ),
          ],
        ));
  }
}
