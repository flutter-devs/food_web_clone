import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryBoyDetailView extends StatelessWidget {
  Responsive responsive = Responsive();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.symmetric(vertical: 25.0) +EdgeInsets.only(left: 20.0 ,),

      width:  responsive.getResponsiveValue(
          context: context,
          forLargeScreen: size.width*.6,
          forMediumScreen: size.width *.8,
          forShortScreen: size.width *.9) ,
      height:  responsive.getResponsiveValue(
          context: context,
          forLargeScreen: 220,
          forMediumScreen: 200,
          forShortScreen: 180),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset("assets/checkout/delivery_boy.jpg",
                fit: BoxFit.cover
                ,height: responsive.getResponsiveValue(
                    context: context,
                    forLargeScreen: 95,
                    forMediumScreen: 85,
                    forShortScreen: 75),
                width:responsive.getResponsiveValue(
                    context: context,
                    forLargeScreen: 95,
                    forMediumScreen: 85,
                    forShortScreen: 75),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: responsive.getResponsiveValue(
                context: context,
                forLargeScreen: 40,
                forMediumScreen: 30,
                forShortScreen: 20),),
            child: Column(
              children: [
                Spacer(flex: 2,),
                Text(
                  "Your Rider",
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.black,
                      fontSize: responsive.getResponsiveValue(
                          context: context,
                          forLargeScreen: 22,
                          forMediumScreen: 20,
                          forShortScreen: 18),
                      fontWeight: FontWeight.normal),
                ),
                Spacer(),
                Text(
                  "Json Stroll",
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: ColorConstant.buttonColor,
                      fontSize: responsive.getResponsiveValue(
                          context: context,
                          forLargeScreen: 24,
                          forMediumScreen: 22,
                          forShortScreen: 20),
                      fontWeight: FontWeight.w600),
                ),
                Spacer(flex: 2,),
              ],
            ),

          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: responsive.getResponsiveValue(
                context: context,
                forLargeScreen: 40,
                forMediumScreen: 30,
                forShortScreen: 20),),
            child: Column(
              children: [
                Spacer(flex: 2,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      child: Icon(
                        Icons.star,
                        size: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 22,
                            forMediumScreen: 20,
                            forShortScreen: 18),
                        color: ColorConstant.buttonColor,
                      ),
                    ),
                    Text(
                      "4.9",
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          color: ColorConstant.buttonColor,
                          fontSize: responsive.getResponsiveValue(
                              context: context,
                              forLargeScreen: 22,
                              forMediumScreen: 20,
                              forShortScreen: 18),
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "(124 ratings)",
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.grey,
                      fontSize: responsive.getResponsiveValue(
                          context: context,
                          forLargeScreen: 20,
                          forMediumScreen: 28,
                          forShortScreen: 16
                      ),
                      fontWeight: FontWeight.w600),
                ),
                Spacer(flex: 2,),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
