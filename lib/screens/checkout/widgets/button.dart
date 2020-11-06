import 'package:flutter/material.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/checkout/widgets/thankyou_dialog.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 250.0),
      child: Card(
        color: ColorConstant.buttonColor,
        margin: EdgeInsets.only(left: 25, right: 25, top: 35, bottom: 35),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: ()
          {
            showAlertDialog(context);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            width: double.infinity,
            height: 40,
            alignment: Alignment.center,
            child: Text(
              "SEND ORDER",
              style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return ThankyouDialog();
      },
    );
  }
}

