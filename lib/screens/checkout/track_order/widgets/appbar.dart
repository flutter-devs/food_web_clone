import 'package:flutter/material.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  Responsive responsive = Responsive();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap: ()
        {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          size: responsive.getResponsiveValue(
              context: context,
              forLargeScreen: 24,
              forMediumScreen: 24,
              forShortScreen: 24),
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      title:  Text(
        "Track your order",
        style: GoogleFonts.lato(
            fontStyle: FontStyle.normal,
            color: Colors.black,
            fontSize: responsive.getResponsiveValue(
                context: context,
                forLargeScreen: 30,
                forMediumScreen: 27,
                forShortScreen: 24),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
