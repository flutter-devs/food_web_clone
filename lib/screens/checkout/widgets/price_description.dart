import 'package:flutter/material.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceDescription extends StatelessWidget {
  Responsive responsive = Responsive();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      margin: EdgeInsets.only(top: 20.0),
      width: responsive.getResponsiveValue(
          context: context,
          forLargeScreen: size.width * .6,
          forMediumScreen: size.width * .9,
          forShortScreen: size.width * .9),
      decoration: BoxDecoration(color: Colors.white ,
          borderRadius: BorderRadius.circular(25.0)),
      child: Column(
        children: [

          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Sub Total",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 20,
                            forMediumScreen: 18,
                            forShortScreen: 16),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    "Rs 439",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 18,
                            forMediumScreen: 16,
                            forShortScreen: 14),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0) +EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "GST",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 20,
                            forMediumScreen: 18,
                            forShortScreen: 16),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    "Rs 40.0",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 18,
                            forMediumScreen: 16,
                            forShortScreen: 14),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0) +EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Delivery Charges",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 20,
                            forMediumScreen: 18,
                            forShortScreen: 16),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    "Rs 40.0",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 18,
                            forMediumScreen: 16,
                            forShortScreen: 14),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0) +EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Total Charges",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 20,
                            forMediumScreen: 18,
                            forShortScreen: 16),
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    "Rs 519.0",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                        fontSize: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 18,
                            forMediumScreen: 16,
                            forShortScreen: 14),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
