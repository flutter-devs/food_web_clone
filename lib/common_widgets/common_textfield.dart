import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

userNameFieldWidget({double fieldMaxWidth, double marginFromTop, GlobalKey<FormState> key, TextEditingController textEditingController , String hintText , var valid, bool isObsecure=false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: fieldMaxWidth,
        margin: EdgeInsets.only(top: marginFromTop),
        child: TextFormField(
          controller: textEditingController,
          obscureText: isObsecure,
          key: key,
          validator: valid,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.lato(
              fontStyle: FontStyle.normal,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ],
  );
}
