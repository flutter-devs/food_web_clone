import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class EstimateDeliveryTime extends StatelessWidget {
  Responsive responsive = Responsive();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: responsive.getResponsiveValue(
          context: context,
          forLargeScreen: 30,
          forMediumScreen: 25,
          forShortScreen: 20)
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Estimate Delivery Time",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontSize:  responsive.getResponsiveValue(
                      context: context,
                      forLargeScreen: 30,
                      forMediumScreen: 25,
                      forShortScreen: 20),
                  fontWeight: FontWeight.normal),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Text(
                "05:30 PM",
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: ColorConstant.buttonColor,
                    fontSize:  responsive.getResponsiveValue(
                        context: context,
                        forLargeScreen: 40,
                        forMediumScreen: 35,
                        forShortScreen: 30),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
