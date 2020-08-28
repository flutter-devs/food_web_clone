import 'package:flutter/material.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBarEditProfile extends StatelessWidget {
  double marginFromTop;
  double fontSizeOfIcon;
  double fontSizeOfMyProfile;
  double fontSizeOfEditProfile;
  double fontSizeOfDone;
  String headingText;

  CustomAppBarEditProfile(
      {this.marginFromTop,
      this.fontSizeOfIcon,
      this.fontSizeOfMyProfile,
      this.fontSizeOfEditProfile,
      this.fontSizeOfDone,
      this.headingText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: marginFromTop),
          width: size.width * .95,
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              InkWell(
                onTap: ()=> Navigator.of(context).pop(),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: fontSizeOfIcon,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Text(
                        "Back",
                        style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: fontSizeOfMyProfile),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 4,
              ),
              Container(
                margin: EdgeInsets.only(left: 0),
                child: Text(
                  headingText,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontSize: fontSizeOfEditProfile,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(
                flex: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 0),
                child: InkWell(
                  onTap: ()
                  {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Done",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: ColorConstant.buttonColor,
                        fontSize: fontSizeOfDone),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///////////////  InfoTile
class InfoTile extends StatelessWidget {
  double heightOfItem;
  double fontSizeOFText;
  String firstText;
  String secondText;


  InfoTile({this.heightOfItem, this.fontSizeOFText, this.firstText ,this.secondText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: ColorConstant.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(

            height: heightOfItem,
            alignment: Alignment.center,
            width: size.width * .94,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: ()
                  {
                    Navigator.of(context).pop();
                    },
                  child: Text(
                    firstText,
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey[700],
                        fontSize: fontSizeOFText,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Text(
                  secondText,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.grey[700],
                      fontSize: fontSizeOFText,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
