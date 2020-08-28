
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/utils/validator.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {

  double marginFromTop;
  double fontSize;
  double texMaxWidth;
  HeadingText({this.marginFromTop, this.fontSize ,this.texMaxWidth =250});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Container(
          margin: EdgeInsets.only(top: marginFromTop),
          width: texMaxWidth,
          child: Text(
            "Welcome To Foodiez",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

/*
userNameFieldWidget({double fieldMaxWidth, double marginFromTop, GlobalKey<FormState> key, TextEditingController textEditingController , String hintText , var valid}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: fieldMaxWidth,
        margin: EdgeInsets.only(top: marginFromTop),
        child: TextFormField(
          controller: textEditingController,
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
*/

/*class UserNameFieldWidget extends StatefulWidget {
  double marginFromTop;
  double fontSize;
  var fieldMaxWidth;
  TextEditingController textEditingController;
  Key key;
  UserNameFieldWidget({this.marginFromTop, this.fontSize ,this.fieldMaxWidth ,this.textEditingController ,this.key});
  @override
  _UserNameFieldWidgetState createState() => _UserNameFieldWidgetState();
}

class _UserNameFieldWidgetState extends State<UserNameFieldWidget> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: widget.fieldMaxWidth,
         margin: EdgeInsets.only(top: widget.marginFromTop),
          child: TextFormField(
            controller: widget.textEditingController,
               key: widget.key,
            validator: Validator().validateEmail,
            decoration: InputDecoration(
              hintText: "Username",
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
}*/

class EmailFieldWidget extends StatefulWidget {
  double marginFromTop;
  double fontSize;
  var fieldMaxWidth;
  TextEditingController textEditingController;
  Key key;
  EmailFieldWidget({this.marginFromTop, this.fontSize ,this.fieldMaxWidth ,this.textEditingController ,this.key});

  @override
  _EmailFieldWidgetState createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<EmailFieldWidget> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: widget.fieldMaxWidth,
         margin: EdgeInsets.only(top: widget.marginFromTop),
          child: TextFormField(
            controller: widget.textEditingController,
                  key: widget.key,
            validator: Validator().validateEmpty,
            decoration: InputDecoration(
              hintText: "Email",
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
}




