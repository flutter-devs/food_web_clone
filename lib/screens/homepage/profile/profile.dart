import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/auth/login/login.dart';
import 'package:food_web_clone/screens/auth/verify/mobile_verification.dart';
import 'package:food_web_clone/screens/homepage/profile/profile_widgets.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _ProfileText(),
              _ProfilePhotoLb(),
              _NameText(),
              _AccountDetailTile(),
              _LogoutButton(),

            ],
          ),
        ),
      ),
    );
  }
}

class _LogoutButton extends StatelessWidget {
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

               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
              },
              child: CustomButton( buttonWidth: 250.0,marginFromTop: 30.0,buttonHeight: 50.0,buttonText: "Logout",color: Color(0xffEB5A6C),),
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
              },
              child:CustomButton( buttonWidth: size.width*0.40,marginFromTop: 20.0,buttonHeight: 45.0,buttonText: "Logout",color: Color(0xffEB5A6C),),
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));

              },
              child: CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10.0,buttonHeight: 45.0,buttonText: "Logout",color: Color(0xffEB5A6C),),
            );
          }
        }
    );
  }
}



class _AccountDetailTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return AccountInfoTile(
              marginLeftOfFlag: 20.0,
              marginTopItem: 10.0,
              fontSizeOfText: 22.0,
              heightOfFlag: 45.0,
              widthOfFlag: 65.0,
              itemHeight: 100,
              marginFromFlag: 20.0,
              sizeOfIcon: 32.0,
              marginRightFromFlag: 20.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return AccountInfoTile(
              marginLeftOfFlag: 15.0,
              marginTopItem: 10.0,
              fontSizeOfText: 18.0,
              heightOfFlag: 35.0,
              widthOfFlag: 45.0,
              itemHeight: 80,
              marginFromFlag: 15.0,
              sizeOfIcon: 28.0,
              marginRightFromFlag: 15.0,
            );
          }
          else
          {
            return AccountInfoTile(
              marginLeftOfFlag: 10.0,
              marginTopItem: 5.0,
              fontSizeOfText: 14.0,
              heightOfFlag: 20.0,
              widthOfFlag: 30.0,
              itemHeight: 50,
              marginFromFlag: 10.0,
              sizeOfIcon: 22.0,
              marginRightFromFlag: 10.0,
            );
          }

        }
    );
  }
}

class _ProfilePhotoLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return ProfilePhoto(
              marginTopItem: 20.0,
              heightOfImage: 220.0,
              widthOfImage: 220.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return ProfilePhoto(
              marginTopItem: 20.0,
              heightOfImage: 180.0,
              widthOfImage: 180.0,
            );
          }
          else
          {
            return ProfilePhoto(
              marginTopItem: 20.0,
              heightOfImage: 150.0,
              widthOfImage: 150.0,
            );
          }

        }
    );
  }
}



class _ProfileText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return CustomTextView(
              fontSize: 57,
              marginFromTop: 35,
              color: Colors.black,
              text: "Profile",
              fontWeight: FontWeight.bold,
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
            return CustomTextView(
                fontSize: 37,
                marginFromTop: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                text: "Profile");
          } else {
            return CustomTextView(
              fontSize: 20,
              marginFromTop: 30,
              color: Colors.black,
              text: "Profile",
              marginFromBottom: 20.0,
              fontWeight: FontWeight.bold,
            );
          }
        });
  }
}

class _NameText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return CustomTextView(
              fontSize: 57,
              marginFromTop: 35,
              color: Colors.black,
              text: "Cristina Ashley",
              fontWeight: FontWeight.bold,
              marginFromBottom: 15.0,
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
            return CustomTextView(
                fontSize: 37,
                marginFromTop: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                text: "Cristina Ashley",
            marginFromBottom: 12.0,);
          } else {
            return CustomTextView(
              fontSize: 20,
              marginFromTop: 30,
              color: Colors.black,
              text: "Cristina Ashley",
              marginFromBottom: 20.0,
              fontWeight: FontWeight.bold,
            );
          }
        });
  }
}
