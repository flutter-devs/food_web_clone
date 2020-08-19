import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextView extends StatelessWidget {

  double marginFromTop;
  double fontSize;
  String text;
  Color color;
  var marginFromBottom;
  var maxWidth;
  var alignment;
  var fontWeight;
  var marginFromLeft;
  CustomTextView({this.marginFromTop, this.fontSize,this.text ,this.color =Colors.white ,this.marginFromBottom =0.0 ,this.maxWidth  = double.infinity , this.alignment =Alignment.center ,this.fontWeight = FontWeight.normal ,this.marginFromLeft =0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxWidth,
      alignment: alignment,
      margin: EdgeInsets.only(top: marginFromTop,bottom: marginFromBottom,left: marginFromLeft),
      child: Text(text,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          fontStyle: FontStyle.normal, color: color,fontSize: fontSize ,
      fontWeight:fontWeight ),),
    );
  }
}