import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressCheckout extends StatelessWidget {
  var fontSizeOfText;
  var sizeOfIcon;
  var maxWidth;
var alignment;
  AddressCheckout({this.fontSizeOfText ,this.sizeOfIcon , this.maxWidth , this.alignment = MainAxisAlignment.start} );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
       mainAxisAlignment: alignment,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0) + EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              color: Colors.white
            ),
            child:  Container(
              width: size.width*maxWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                    size: sizeOfIcon,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Sector-5 Dwarka Delhi",
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontSize: fontSizeOfText,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
