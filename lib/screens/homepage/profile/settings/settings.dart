import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/homepage/profile/edit_profile/edit_profile.dart';
import 'package:food_web_clone/screens/homepage/profile/edit_profile/edit_prrofile_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.profileBackgroundColor,
        body: Column(
          children: <Widget>[
            _CustomAppBar(),
            SizedBox(height: 20.0,),
            HeadingTextViewLb(text:"SECURITY"),
            _InfoTileLb(firstText: "Allow Push Notification"),
            _InfoTileLb(firstText: "Enable Face ID/Touch ID"),
            HeadingTextViewLb(text:"PUSH NOTIFICATIONS"),
            _InfoTileLb(firstText: "Order Updates"),
            _InfoTileLb(firstText: "New Arrivals"),
            _InfoTileLb(firstText: "Promotion"),
            _saveLb(),
          ],
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return CustomAppBarEditProfile(
              marginFromTop: 35.0,
              fontSizeOfDone: 20.0,
              fontSizeOfEditProfile: 32.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 22.0,
              headingText: "Settings",
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return CustomAppBarEditProfile(
              marginFromTop: 30.0,
              fontSizeOfDone: 18.0,
              fontSizeOfEditProfile: 28.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 18.0,
              headingText: "Settings",
            );
          }
          else
          {
            return CustomAppBarEditProfile(
              marginFromTop: 20.0,
              fontSizeOfDone: 16.0,
              fontSizeOfEditProfile: 24.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 16.0,
              headingText: "Settings",
            );     }

        }
    );
  }
}

class _saveLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            // return CustomButton( buttonWidth: 250,marginFromTop: 30,);
            return InkWell
              (
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,

              onTap: ()
              {

              },
              child: CustomButton( buttonWidth: 250.0,marginFromTop: 30.0,buttonHeight: 50.0,buttonText: "Save",color: Color(0xffEB5A6C),),
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return  InkWell
              (
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,

              onTap: ()
              {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
              },
              child:CustomButton( buttonWidth: size.width*0.40,marginFromTop: 20.0,buttonHeight: 45.0,buttonText: "Save",color: Color(0xffEB5A6C),),
            );
          }
          else
          {
            // return  CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10,buttonHeight: 45,);
            return  InkWell
              (
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,

              onTap: ()
              {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));

              },
              child: CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10.0,buttonHeight: 45.0,buttonText: "Save",color: Color(0xffEB5A6C),),
            );
          }
        }
    );
  }
}

class _InfoTileLb extends StatelessWidget {

  String firstText;


  _InfoTileLb({this.firstText});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return InfoTileButton(
              firstText: firstText,
              fontSizeOFText: 22.0,
              heightOfItem: 90.0,

            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return InfoTileButton(
              firstText: firstText,
              fontSizeOFText: 20.0,
              heightOfItem: 80.0,

            );
          }
          else
          {
            return InfoTileButton(
              firstText: firstText,
              fontSizeOFText: 17.0,
              heightOfItem: 60.0,

            );
          }
        }
    );
  }
}


class InfoTileButton  extends StatefulWidget{
  double heightOfItem;

  double fontSizeOFText;

  String firstText;

  InfoTileButton({this.heightOfItem, this.fontSizeOFText, this.firstText});

  @override
  _InfoTileButtonState createState() => _InfoTileButtonState();
}

class _InfoTileButtonState extends State<InfoTileButton> {





  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: ColorConstant.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(

            height: widget.heightOfItem,
            alignment: Alignment.center,
            width: size.width * .94,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: ()
                  {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    widget.firstText,
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        color: Colors.grey[700],
                        fontSize: widget.fontSizeOFText,
                        fontWeight: FontWeight.normal),
                  ),
                ),
      CupertinoSwitch(
        value: _lights,
        onChanged: (bool value) { setState(() { _lights = value; }); },
      ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
