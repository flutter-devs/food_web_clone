import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarCheckout extends StatelessWidget {
  var fontSizeOfTitleText;
  var sizeOfIcon;

  AppBarCheckout({this.fontSizeOfTitleText ,this.sizeOfIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:  IconButton(
        onPressed: ()
        {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: sizeOfIcon,
        ),
      ),

      elevation: 0.0,
      backgroundColor: Colors.transparent,

      centerTitle: true,
      title:  Text(
         "Checkout",
        style: GoogleFonts.lato(
            fontStyle: FontStyle.normal,
            color: Colors.black,
            fontSize: fontSizeOfTitleText,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
