import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/homepage/profile/edit_profile/edit_prrofile_widgets.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.profileBackgroundColor,
        body: Column(
          children: <Widget>[
            _CustomAppBar(),
            SizedBox(height: 20.0,),
            _InfoTileLb(firstText: "Address 142 Steiner ,San Francisco ,CA,94115",secondText: "",),
            _InfoTileLb(firstText: "E-mail us",secondText: "text123@gmail.com",),
            _ContactUs(),
          ],
        ),
      ),
    );
  }
}

class _ContactUs extends StatelessWidget {
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
              child: CustomButton( buttonWidth: 250.0,marginFromTop: 30.0,buttonHeight: 50.0,buttonText: "Contact Us",color: Color(0xffEB5A6C),),
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
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
              child:CustomButton( buttonWidth: size.width*0.40,marginFromTop: 20.0,buttonHeight: 45.0,buttonText: "Contact Us",color: Color(0xffEB5A6C),),
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
              child: CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10.0,buttonHeight: 45.0,buttonText: "Contact Us",color: Color(0xffEB5A6C),),
            );
          }
        }
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
              headingText: "Contact Us",
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return CustomAppBarEditProfile(
              marginFromTop: 30.0,
              fontSizeOfDone: 18.0,
              fontSizeOfEditProfile: 28.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 18.0,
              headingText: "Contact Us",
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
              headingText: "Contact Us",
            );     }

        }
    );
  }
}

class _InfoTileLb extends StatelessWidget {

  String firstText;
  String secondText;

  _InfoTileLb({this.firstText, this.secondText});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return InfoTile(
              firstText: firstText,
              fontSizeOFText: 22.0,
              heightOfItem: 90.0,
              secondText: secondText,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return InfoTile(
              firstText: firstText,
              fontSizeOFText: 20.0,
              heightOfItem: 80.0,
              secondText: secondText,
            );
          }
          else
          {
            return InfoTile(
              firstText: firstText,
              fontSizeOFText: 16.0,
              heightOfItem: 60.0,
              secondText: secondText,
            );
          }
        }
    );
  }
}
