import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDesc extends StatefulWidget {
  @override
  _OrderDescState createState() => _OrderDescState();
}

class _OrderDescState extends State<OrderDesc> {
  Responsive responsive = Responsive();

  int quantity1 = 0;
  int quantity2 = 0;

  int  pastaprice = 209;

  var prizzaPrice = 439;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          margin: EdgeInsets.only(top: 20.0),
          width: responsive.getResponsiveValue(
              context: context,
              forLargeScreen: size.width * .6,
              forMediumScreen: size.width * .9,
              forShortScreen: size.width * .9),
          decoration: BoxDecoration(color: Colors.white),
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
                        "YOUR ORDER",
                        style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            fontSize: responsive.getResponsiveValue(
                                context: context,
                                forLargeScreen: 24,
                                forMediumScreen: 18,
                                forShortScreen: 16),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        "Add More Items",
                        style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            color: ColorConstant.buttonColor,
                            fontSize: responsive.getResponsiveValue(
                                context: context,
                                forLargeScreen: 20,
                                forMediumScreen: 16,
                                forShortScreen: 14),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Classic Pizzas",
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
                        "Rs " +prizzaPrice.toString(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0.0),
                    width: responsive.getResponsiveValue(
                        context: context,
                        forLargeScreen: 220,
                        forMediumScreen: 200,
                        forShortScreen: 200),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0) +
                    EdgeInsets.only(top: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "veg    Classic Pizzas",
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
                    Spacer(),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          quantity1 = quantity1 - 1;
                          prizzaPrice = 439*quantity1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(left: 15.0, right: 15.0),
                        height: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 50,
                            forMediumScreen: 40,
                            forShortScreen: 32),
                        width: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 30,
                            forMediumScreen: 27,
                            forShortScreen: 24),
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "-",
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: responsive.getResponsiveValue(
                                    context: context,
                                    forLargeScreen: 18,
                                    forMediumScreen: 16,
                                    forShortScreen: 14),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      quantity1.toString(),
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
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          quantity1 = quantity1 + 1;
                          prizzaPrice = 439*quantity1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(left: 15.0, right: 15.0),
                        height: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 50,
                            forMediumScreen: 40,
                            forShortScreen: 32),
                        width: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 30,
                            forMediumScreen: 27,
                            forShortScreen: 24),
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "+",
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: responsive.getResponsiveValue(
                                    context: context,
                                    forLargeScreen: 18,
                                    forMediumScreen: 16,
                                    forShortScreen: 14),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ) ,
              Container(
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Green chili pasta",
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
                        "Rs "+ pastaprice.toString(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0.0),
                    width: responsive.getResponsiveValue(
                        context: context,
                        forLargeScreen: 220,
                        forMediumScreen: 200,
                        forShortScreen: 200),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0) +
                    EdgeInsets.only(top: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "veg    Green chili pasta",
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
                    Spacer(),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          quantity2 = quantity2 - 1;
                       pastaprice =    209 *quantity2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(left: 15.0, right: 15.0),
                        height: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 50,
                            forMediumScreen: 40,
                            forShortScreen: 32),
                        width: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 30,
                            forMediumScreen: 27,
                            forShortScreen: 24),
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "-",
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: responsive.getResponsiveValue(
                                    context: context,
                                    forLargeScreen: 18,
                                    forMediumScreen: 16,
                                    forShortScreen: 14),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      quantity2.toString(),
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
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          quantity2 = quantity2 + 1;
                          pastaprice  =209*quantity2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(left: 15.0, right: 15.0),
                        height: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 50,
                            forMediumScreen: 40,
                            forShortScreen: 32),
                        width: responsive.getResponsiveValue(
                            context: context,
                            forLargeScreen: 30,
                            forMediumScreen: 27,
                            forShortScreen: 24),
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "+",
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.normal,
                                color: Colors.black,
                                fontSize: responsive.getResponsiveValue(
                                    context: context,
                                    forLargeScreen: 18,
                                    forMediumScreen: 16,
                                    forShortScreen: 14),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
