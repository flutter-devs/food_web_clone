import 'package:flutter/material.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyPromocode extends StatelessWidget {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("assets/checkout/voucher.png",fit: BoxFit.cover
                ,height:responsive.getResponsiveValue(
                    context: context,
                    forLargeScreen: 60,
                    forMediumScreen: 50,
                    forShortScreen: 40), width: responsive.getResponsiveValue(
                    context: context,
                    forLargeScreen: 60,
                    forMediumScreen: 50,
                    forShortScreen: 40),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.0),
            child: Text(
              "Apply Promo Code",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontSize: responsive.getResponsiveValue(
                      context: context,
                      forLargeScreen: 24,
                      forMediumScreen: 20,
                      forShortScreen: 16),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 24,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
