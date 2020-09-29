import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/homepage/profile/edit_profile/edit_prrofile_widgets.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.profileBackgroundColor,
        body: Column(
          children: <Widget>[
            _CustomAppBar(),
             HeadingTextViewLb(text:"Public Profile"),
              _InfoTileLb(firstText: "First Name",secondText: "Cristina",),
              _InfoTileLb(firstText: "Last Name",secondText: "Ashley",),
             HeadingTextViewLb(text:"Private Details"),
            _InfoTileLb(firstText: "Email Address",secondText: "cristina@gmail.com",),
            _InfoTileLb(firstText: "Phone Number",secondText: "+9876532356324",),
          ],
        ),

      ),
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
              fontSizeOFText: 17.0,
              heightOfItem: 60.0,
              secondText: secondText,
            );
          }
        }
    );
  }
}

class HeadingTextViewLb extends StatelessWidget {
 String text;
 HeadingTextViewLb({this.text});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   return LayoutBuilder(
       builder: (BuildContext context, BoxConstraints constraints) {
         if(constraints.maxWidth > 1200.0) {
           return  CustomTextView(
             fontSize: 26.0,
             marginFromTop: 60.0,
             color: Colors.grey,
             text: text,
             alignment: Alignment.topLeft,
             marginFromLeft: 35.0,
             marginFromBottom: 10.0,
           );
         }
         else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
           return CustomTextView(
             fontSize: 24.0,
             marginFromTop: 60.0,
             color: Colors.grey,
             text: text,
             alignment: Alignment.topLeft,
             marginFromLeft: 30.0,
             marginFromBottom: 8.0,
           );
         }
         else
         {
           return CustomTextView(
             fontSize: 20.0,
             marginFromTop: 40.0,
             color: Colors.grey,
             text: text,
             alignment: Alignment.topLeft,
             marginFromLeft: 20.0,
               marginFromBottom: 5.0,
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
              headingText: "Edit Profile",
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return CustomAppBarEditProfile(
              marginFromTop: 30.0,
              fontSizeOfDone: 18.0,
              fontSizeOfEditProfile: 28.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 18.0,
              headingText: "Edit Profile",
            );
          }
          else
          {
            return CustomAppBarEditProfile(
              marginFromTop: 20.0,
              fontSizeOfDone: 16.0,
              fontSizeOfEditProfile: 20.0,
              fontSizeOfIcon: 24.0,
              fontSizeOfMyProfile: 16.0,
              headingText: "Edit Profile",
            );     }

        }
    );
  }
}
