
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';



class OrderTypeCheckoutView extends StatefulWidget {

  @override
  _OrderTypeCheckoutViewState createState() => _OrderTypeCheckoutViewState();
}

class _OrderTypeCheckoutViewState extends State<OrderTypeCheckoutView> {
var button1 = ColorConstant.buttonColor;

var button2 = Colors.grey;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Responsive responsive = Responsive();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.0),
          height: responsive.getResponsiveValue(context: context , forLargeScreen: 250 ,forMediumScreen: 220 ,forShortScreen: 180 ),
          width: responsive.getResponsiveValue(context: context , forLargeScreen: size.width*.6 ,forMediumScreen: size.width*.9  ,forShortScreen: size.width*.9),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0) + EdgeInsets.only(left: 20.0),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "ORDER TYPE",
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        fontSize: responsive.getResponsiveValue(context: context , forLargeScreen: 26 ,forMediumScreen: 24 ,forShortScreen: 20),
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Divider(color: Colors.black,thickness: 1.0,),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: ()
                        {
                          setState(() {
                            button2 = Colors.grey;
                            button1 = Colors.pink;
                          });
                        },
                        child: Container(
                          height:responsive.getResponsiveValue(context: context , forLargeScreen: 120 ,forMediumScreen: 120  ,forShortScreen: 120 ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(color:  button1,width: 2.0),
                          ),
                          child:   Center(
                            child: Image.asset("assets/checkout/food_delivery.png",fit: BoxFit.cover
                              ,height: responsive.getResponsiveValue(context: context , forLargeScreen: 74 ,forMediumScreen: 60  ,forShortScreen: 50 ),
                              width: responsive.getResponsiveValue(context: context , forLargeScreen: 74 ,forMediumScreen: 60  ,forShortScreen: 50 ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: InkWell(
                        onTap: ()
                        {
                          setState(() {
                            button2 = Colors.pink;
                            button1 = Colors.grey;
                          });
                        },
                        child: Container(
                            height:responsive.getResponsiveValue(context: context , forLargeScreen: 120 ,forMediumScreen: 120  ,forShortScreen: 120 ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all(color: button2 ,width: 2.0),
                          ),
                         child:   Center(
                              child: Image.asset("assets/checkout/bag.png",fit: BoxFit.cover
                     ,height: responsive.getResponsiveValue(context: context , forLargeScreen: 74 ,forMediumScreen: 60  ,forShortScreen: 50 ),
    width: responsive.getResponsiveValue(context: context , forLargeScreen: 74 ,forMediumScreen: 60  ,forShortScreen: 50 ),),
    ),
                            ),
                      )
                      ),

                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
