import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/checkout/track_order/track_order.dart';
import 'package:food_web_clone/screens/homepage/homepage.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ThankyouDialog extends StatelessWidget {
  Responsive responsive = Responsive();
  @override
  Widget build(BuildContext context) {

      var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () {},
      child: AlertDialog(
        content: Container(
        height :responsive.getResponsiveValue(
        context: context,
        forLargeScreen: 400,
        forMediumScreen: 340,
        forShortScreen: 240)
          ,width:responsive.getResponsiveValue(
          context: context,
            forLargeScreen: 400,
            forMediumScreen: 340,
            forShortScreen: 300),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset("assets/checkout/thank_you.png",fit: BoxFit.cover
                    ,height :responsive.getResponsiveValue(
                        context: context,
                        forLargeScreen: 200,
                        forMediumScreen: 150,
                        forShortScreen: 100)
                    ,width:responsive.getResponsiveValue(
                        context: context,
                          forLargeScreen: 200,
                          forMediumScreen: 150,
                          forShortScreen: 100)
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: responsive.getResponsiveValue(
                    context: context,
                    forLargeScreen: 25,
                    forMediumScreen: 20,
                    forShortScreen: 18)),
                child: Text(
                  "Thank you for ordering",
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: ColorConstant.buttonColor,
                      fontSize: responsive.getResponsiveValue(
                          context: context,
                          forLargeScreen: 24,
                          forMediumScreen: 22,
                          forShortScreen: 18),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(flex: 2,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: ()
                      {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()),
                                (route) => false);
                      },
                      child: Text(
                        "Order something else",
                        style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            color: Colors.grey,
                            fontSize: responsive.getResponsiveValue(
                                context: context,
                                forLargeScreen: 18,
                                forMediumScreen: 15,
                                forShortScreen: 13),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> TrackOrder()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: ColorConstant.buttonColor,
                        ),
                        width: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 180,
                            forMediumScreen: 150,
                            forShortScreen: 140),
                        height: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 50,
                            forMediumScreen: 50,
                            forShortScreen: 40),
                        alignment: Alignment.center,
                        child: Text(
                          "Track your order",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.lato(
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontSize: responsive.getResponsiveValue(
                                  context: context,
                                  forLargeScreen: 18,
                                  forMediumScreen: 15,
                                  forShortScreen: 13),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )

                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ) ,

      ),
    );
  }
}
