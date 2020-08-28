
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCurrentLocaton extends StatelessWidget{
  double fontSizeOfBackIcon;
  double maginFromLeftIcon;
  double marginLeftFromIcon;
  double marginTopItem;
  double fontSizeOfText;


  UserCurrentLocaton({this.fontSizeOfBackIcon, this.maginFromLeftIcon,
    this.marginLeftFromIcon, this.marginTopItem, this.fontSizeOfText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTopItem, left: maginFromLeftIcon, ),
      child: Row(
        children: <Widget>[
          // Icon
          Icon(
          Icons.arrow_back,
          size: fontSizeOfBackIcon,
          color: Color(0xffEB5A6C),
          ),
          //
          Container(
            margin: EdgeInsets.only(left: marginLeftFromIcon),
            child: Text("User Current Location",style: GoogleFonts.lato(
                fontStyle: FontStyle.normal, color: Colors.black,fontSize: fontSizeOfText,fontWeight: FontWeight.normal),),
          )

        ],
      ),
    );


  }

}