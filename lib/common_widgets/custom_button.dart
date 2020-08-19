

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {

  double marginFromTop;
  double fontSize;
  var buttonWidth;
  double buttonHeight;
  String buttonText;
  var color;
  var textColor;
  CustomButton({this.marginFromTop, this.fontSize =17,this.buttonWidth =250,this.buttonHeight =60 , this.buttonText , this.color = Colors.pinkAccent,this.textColor = Colors.white});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: marginFromTop,
        ),
        Container(
          width: buttonWidth,
          // constraints: BoxConstraints(maxWidth: 250),
          child: Card(
            color: color,
            margin: EdgeInsets.only(left: 25,right: 25,top: 35,bottom: 10),
            child:  Container(
              width: MediaQuery.of(context).size.width,
              height: buttonHeight,
              alignment: Alignment.center,
              child: Text(buttonText,style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal, color: textColor,fontSize: fontSize,fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ],
    );
  }
}