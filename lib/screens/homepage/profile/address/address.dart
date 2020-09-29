import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/screens/homepage/profile/edit_profile/edit_prrofile_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            _CustomAppBar(),
            _AddressLine(heading: "LINE 1", hint: "103 STEINER ST", marginFromTop: 50.0,marginFromTopT: 80,marginFromTopW: 90,),
            _AddressLine(heading: "LINE 2", hint: "Apt #604"),
            _AddressLine(heading: "Zipcode", hint: "94102"),
            _AddressLine(heading: "City", hint: "London"),
            _AddressLine(heading: "Country", hint: "UNITED STATES"),
            _SAVEADRESS(),
          ],
        ),
      ),
    );
  }
}

class _AddressLine extends StatelessWidget {
  String heading;
  String hint;
  double marginFromTop;
  double marginFromTopW;
  double marginFromTopT;
  _AddressLine({this.heading,this.hint,this.marginFromTop = 0.0 ,this.marginFromTopT =0.0 ,this.marginFromTopW =0.0 ,});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return Container(
          margin: EdgeInsets.only(top: marginFromTopW),
          child: _addressLine(
              size: size, fonttSizeOFText: 20.0, heading: heading, hint: hint ,marginFromTop: 40.0 ,marginRightFromText: 40.0 ,sizeOfField: size.width*.4,maxWidth: 150.0),
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return Container(
          margin: EdgeInsets.only(top: marginFromTopT),
          child: _addressLine(
              size: size, fonttSizeOFText: 18.0, heading: heading, hint: hint ,marginFromTop: 30.0,marginRightFromText: 30.0 ,sizeOfField: size.width*.55,maxWidth: 150.0),
        );
      } else {
        return Container(
          margin: EdgeInsets.only(top: marginFromTop),
          child: _addressLine(
              size: size, fonttSizeOFText: 16.0, heading: heading, hint: hint ,marginFromTop: 20.0 ,marginRightFromText: 10.0 ,sizeOfField: size.width*.6,maxWidth: 80.0),
        );
      }
    });
  }

  _addressLine({String heading, String hint, size, fonttSizeOFText ,marginFromTop ,marginRightFromText ,sizeOfField ,maxWidth} ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: marginFromTop),
          width: size.width *.92,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: maxWidth,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(right: marginRightFromText),
                child: Text(
                  heading,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.grey[800],
                      fontSize: fonttSizeOFText,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                width: sizeOfField,
                height: 60,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  autofocus: false,
                  textAlign: TextAlign.start,
                  style: TextStyle(),
                  decoration: InputDecoration(
                    focusColor: Colors.transparent,
                    fillColor: Colors.grey[200],
                    hoverColor: Colors.transparent,
                    //focusColor: Colors.transparent,
                    filled: true,
                    hintText: hint,
                    hintStyle: GoogleFonts.lato(
                        color: Colors.grey, fontSize: 14),
                    labelStyle: GoogleFonts.roboto(fontStyle: FontStyle.normal),
                    contentPadding:
                        EdgeInsets.only(left: 40, top: 8, bottom: 8, right: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return CustomAppBarEditProfile(
          marginFromTop: 35.0,
          fontSizeOfDone: 20.0,
          fontSizeOfEditProfile: 32.0,
          fontSizeOfIcon: 24.0,
          fontSizeOfMyProfile: 22.0,
          headingText: "Delivery Address ",
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return CustomAppBarEditProfile(
          marginFromTop: 30.0,
          fontSizeOfDone: 18.0,
          fontSizeOfEditProfile: 28.0,
          fontSizeOfIcon: 24.0,
          fontSizeOfMyProfile: 18.0,
          headingText: "Delivery Address ",
        );
      } else {
        return CustomAppBarEditProfile(
          marginFromTop: 20.0,
          fontSizeOfDone: 16.0,
          fontSizeOfEditProfile: 20.0,
          fontSizeOfIcon: 22.0,
          fontSizeOfMyProfile: 16.0,
          headingText: "Delivery Address ",
        );
      }
    });
  }
}

class _SAVEADRESS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        // return CustomButton( buttonWidth: 250,marginFromTop: 30,);
        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          onTap: () {
            //    Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
          },
          child: CustomButton(
            buttonWidth: 250.0,
            marginFromTop: 30.0,
            buttonHeight: 50.0,
            buttonText: "SAVE ADDRESS",
            color: Color(0xffEB5A6C),
          ),
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          onTap: () {
            //    Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
          },
          child: CustomButton(
            buttonWidth: size.width * 0.40,
            marginFromTop: 20.0,
            buttonHeight: 45.0,
            buttonText: "SAVE ADDRESS",
            color: Color(0xffEB5A6C),
          ),
        );
      } else {
        // return  CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10,buttonHeight: 45,);
        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          onTap: () {
            //    Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
          },
          child: CustomButton(
            buttonWidth: size.width * 0.9,
            marginFromTop: 10.0,
            buttonHeight: 45.0,
            buttonText: "SAVE ADDRESS",
            color: Color(0xffEB5A6C),
          ),
        );
      }
    });
  }
}
