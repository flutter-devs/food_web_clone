import 'package:flutter/material.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/provider/addToCart.dart';
import 'package:food_web_clone/screens/checkout/checkout.dart';
import 'package:food_web_clone/screens/homepage/detail_page_view/detailpage_view_model.dart';
import 'package:food_web_clone/screens/payment/payment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HeadingBarDetailPageView extends StatelessWidget {
  String imagePath;
  String headingText;
  double fontSizeOfBackArrow;
  var heightOfImage;
  double fontSizeOfTitleText;
  double postionedBottomTitle;
  double positionedLeftTitle;
  double positionedLeftIcon;
  double positionedtopIcon;
  double maxWidthOfText;
  var alignment;
  var fontSizeOfNoOfItemText;
  var sizeOfItemView;

  HeadingBarDetailPageView({this.fontSizeOfBackArrow,
    this.sizeOfItemView,
    this.heightOfImage,
    this.fontSizeOfTitleText,
    this.postionedBottomTitle,
    this.positionedLeftTitle,
    this.positionedLeftIcon,
    this.positionedtopIcon,
    this.maxWidthOfText,
    this.imagePath,
    this.headingText,
    this.fontSizeOfNoOfItemText,
    this.alignment = Alignment.topLeft});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AddToCart>(context, listen: true);
    var size = MediaQuery
        .of(context)
        .size;
    return Container(
      width: size.width,
      alignment: alignment,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 0),
            child: Image.asset(
              imagePath ?? "assets/food/cafe.jpg",
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
              width: size.width * .95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19),
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back,
                        size: fontSizeOfBackArrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Checkout()));
                    },
                    child: Stack(
                      overflow: Overflow.visible,
                      alignment: Alignment.topRight,
                      children: [
                        Container(
                          child: Icon(
                            Icons.shopping_cart,
                            size: fontSizeOfBackArrow,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: -7,
                          right: -4,
                          child: Container(
                            width: sizeOfItemView,
                            height: sizeOfItemView,
                            // margin: EdgeInsets.only(bottom: 20.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorConstant.buttonColor
                            ),
                            child: Text(
                              provider.noOfItems.toString(),
                              style: GoogleFonts.lato(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                  fontSize: fontSizeOfNoOfItemText,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // title Text
          Positioned(
            bottom: postionedBottomTitle,
            left: positionedLeftTitle,
            child: Container(
              width: maxWidthOfText,
              child: Text(
                headingText ?? "Black smith cafe",
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: fontSizeOfTitleText,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OrderFoodDeliveryButton extends StatelessWidget {
  double heightOFButton;
  double fontSizeText;
  double marginFromTop;
  var maxWidth;
  var widthOfButton;

  OrderFoodDeliveryButton({this.heightOFButton,
    this.fontSizeText,
    this.maxWidth = double.infinity,
    this.marginFromTop = 0.0 ,this.widthOfButton});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
var provider = Provider.of<AddToCart>(context ,listen: true);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RazorPayWeb()));
          },
          child: Container(
            margin: EdgeInsets.only(top: marginFromTop),
            width: maxWidth,
            height: heightOFButton,
            alignment: Alignment.center,
            color: ColorConstant.buttonColor,
            child: Container(
              margin: EdgeInsets.only(left: 0),
              child: Text(
                "Buy",
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: fontSizeText,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),

        _CustomButton(
          buttonText: "-",
          fontSizeText: fontSizeText,
          heightOFButton: heightOFButton,
          marginFromTop: marginFromTop,
          widthOfButton: widthOfButton,
          onTap: () {
provider.noOfItems = --provider.noOfItems;
          },),
        _CustomButton(buttonText:  "x "+provider.noOfItems.toString(),
          fontSizeText: fontSizeText,
          heightOFButton: heightOFButton,
          marginFromTop: marginFromTop,
          widthOfButton: widthOfButton,
          ),
        _CustomButton(buttonText: "+",
          fontSizeText: fontSizeText,
          heightOFButton: heightOFButton,
          marginFromTop: marginFromTop,
          onTap: () {
            provider.noOfItems = ++provider.noOfItems;
          },
        widthOfButton: widthOfButton,),

      ],
    );
  }
}

class _CustomButton extends StatelessWidget {
  var marginFromTop;
  var heightOFButton;
  var fontSizeText;
  var buttonText;
  var widthOfButton;

  VoidCallback onTap;


  _CustomButton({this.marginFromTop, this.heightOFButton, this.fontSizeText,
    this.buttonText, this.onTap ,this.widthOfButton} );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
     focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(top: marginFromTop, left: 10.0 ,right: 10.0),
        width: widthOfButton,
        height: heightOFButton,
        alignment: Alignment.center,

        child: Container(
          margin: EdgeInsets.only(left: 0),
          child: Text(
            buttonText,
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: fontSizeText,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class ShareReviewPhoto extends StatelessWidget {
  double fontSizeText;
  double topMargin;
  double fontSizeOFIcon;

  ShareReviewPhoto({this.fontSizeText, this.topMargin, this.fontSizeOFIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon(Icons.share, "share"),
        icon(Icons.star_border, "review"),
        icon(Icons.camera_alt, "Photo"),
      ],
    );
  }

  icon(IconData icon, String s) =>
      Container(
        margin: EdgeInsets.only(top: topMargin, left: 10, right: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Icon(
                icon,
                size: fontSizeOFIcon,
                color: ColorConstant.blackColor,
              ),
            ),
            Text(
              s,
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontSize: fontSizeText,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      );
}

class AdressDetailPageWidget extends StatelessWidget {
  double fontSizeOfText;
  double itemHeight;
  double sizeOfIcon;
  double marginTopItem;
  double leftMarginFromText;

  AdressDetailPageWidget({this.fontSizeOfText,
    this.itemHeight,
    this.sizeOfIcon,
    this.marginTopItem,
    this.leftMarginFromText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.only(top: marginTopItem),
      width: size.width,
      height: itemHeight,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: leftMarginFromText),
            child: Text(
              "123 Queen Street, Sydney \n Australian Cafe \n 11:30AM to 11:00PM",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  color: Colors.grey,
                  fontSize: fontSizeOfText,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(
            flex: 3,
          ),
          Icon(
            Icons.location_on,
            size: sizeOfIcon,
            color: ColorConstant.buttonColor,
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class PhotsItem extends StatelessWidget {
  double heightOfImage;
  double heightOFWidth;
  double fontSizeOfText;
  double fontSizeOFttextNumber;
  double marginTopItem;

  PhotsItem({this.heightOfImage,
    this.heightOFWidth,
    this.fontSizeOfText,
    this.fontSizeOFttextNumber,
    this.marginTopItem});

  DetailPageViewModel detailPageViewModel = new DetailPageViewModel();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _CommonPhotoDetailWidget(
          marginTopItem: marginTopItem,
          detailPageViewModel: detailPageViewModel,
          heightOfImage: heightOfImage,
          heightOFWidth: heightOFWidth,
          fontSizeOfText: fontSizeOfText,
          fontSizeOFttextNumber: fontSizeOFttextNumber,
          index: 0,
        ),
        _CommonPhotoDetailWidget(
          marginTopItem: marginTopItem,
          detailPageViewModel: detailPageViewModel,
          heightOfImage: heightOfImage,
          heightOFWidth: heightOFWidth,
          fontSizeOfText: fontSizeOfText,
          fontSizeOFttextNumber: fontSizeOFttextNumber,
          index: 1,
        ),
        _CommonPhotoDetailWidget(
          marginTopItem: marginTopItem,
          detailPageViewModel: detailPageViewModel,
          heightOfImage: heightOfImage,
          heightOFWidth: heightOFWidth,
          fontSizeOfText: fontSizeOfText,
          fontSizeOFttextNumber: fontSizeOFttextNumber,
          index: 2,
        ),
        _CommonPhotoDetailWidget(
          marginTopItem: marginTopItem,
          detailPageViewModel: detailPageViewModel,
          heightOfImage: heightOfImage,
          heightOFWidth: heightOFWidth,
          fontSizeOfText: fontSizeOfText,
          fontSizeOFttextNumber: fontSizeOFttextNumber,
          index: 3,
        ),
      ],
    );
  }
}

class _CommonPhotoDetailWidget extends StatelessWidget {
  const _CommonPhotoDetailWidget({
    Key key,
    @required this.marginTopItem,
    @required this.detailPageViewModel,
    @required this.heightOfImage,
    @required this.heightOFWidth,
    @required this.fontSizeOfText,
    @required this.fontSizeOFttextNumber,
    this.index,
  }) : super(key: key);

  final double marginTopItem;
  final DetailPageViewModel detailPageViewModel;
  final double heightOfImage;
  final double heightOFWidth;
  final double fontSizeOfText;
  final double fontSizeOFttextNumber;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // image
        Container(
          margin: EdgeInsets.only(bottom: 7.0, top: marginTopItem),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2.0),
            child: Image.network(
              detailPageViewModel.list[index].imageNetworkPath,
              fit: BoxFit.cover,
              height: heightOfImage,
              width: heightOFWidth,
            ),
          ),
        ),
        // text
        Container(
          margin: EdgeInsets.only(bottom: 2),
          child: Text(
            detailPageViewModel.list[index].name,
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: fontSizeOfText,
                fontWeight: FontWeight.bold),
          ),
        ),
        // (18)
        Container(
          margin: EdgeInsets.only(bottom: 2),
          child: Text(
            "(80)",
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.grey,
                fontSize: fontSizeOFttextNumber,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
