import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_web_clone/common_widgets/common_textfield.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/auth/login/login.dart';
import 'package:food_web_clone/screens/auth/signup/welcome_foodie_login_widgets.dart';
import 'package:food_web_clone/screens/homepage/homepage.dart';
import 'package:food_web_clone/utils/validator.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeFoodieLogin extends StatefulWidget {
  @override
  _WelcomeFoodieLoginState createState() => _WelcomeFoodieLoginState();
}

class _WelcomeFoodieLoginState extends State<WelcomeFoodieLogin> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController textEditingControllerUsername = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WelcomeToFoodiezHedingText(),
              CreateYourAccount(),
              userNameField(
                  textEditingController: textEditingControllerUsername,
                  size: size,
                  hintText: "Username",
                  valid: Validator().validateEmpty,
                isObsecure: false
              ),
              userNameField(
                  textEditingController: textEditingControllerEmail,
                  size: size,
                  hintText: "Email",
                  valid: Validator().validateEmail,
                  isObsecure: false

              ),
              userNameField(
                  textEditingController: textEditingControllerPassword,
                  size: size,
                  hintText: "Password",
                  valid: Validator().validateEmpty,
                  isObsecure: true

              ),
              // PasswordField(textEditingController: textEditingControllerPassword,key: _formKey,),
              signUp(size),
              //TermsAndCondition(),
              //Spacer(),
              LogInYourAccount(),
            ],
          ),
        ),
      ),
    );
  }

  signUp(size) => LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200.0) {
          // return CustomButton( buttonWidth: 250,marginFromTop: 30,);
          return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () {

              if (formKey.currentState.validate()) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
              }
            },
            child: CustomButton(
              buttonWidth: 250.0,
              marginFromTop: 30.0,
              buttonHeight: 50.0,
              buttonText: "SignUp",
            ),
          );
        } else if (constraints.maxWidth > 800.0 &&
            constraints.maxWidth < 1200.0) {
          return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () {

              if (formKey.currentState.validate()) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                print("yes its hit");
              }
            },
            child: CustomButton(
                buttonWidth: size.width * 0.40,
                marginFromTop: 20.0,
                buttonHeight: 45.0,
                buttonText: "SignUp"),
          );
        } else {

          return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () {
              if (formKey.currentState.validate()) {
                print("yes its hit");
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()));
              }
            },
            child: CustomButton(
                buttonWidth: size.width * 0.9,
                marginFromTop: 10.0,
                buttonHeight: 45.0,
                buttonText: "SignUp"),
          );
        }
      });

  userNameField(
      {TextEditingController textEditingController,
      Size size,
      String hintText,
      var valid
      ,
      bool isObsecure}) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return userNameFieldWidget(
            fieldMaxWidth: size.width * 0.4,
            marginFromTop: 30,
            textEditingController: textEditingController,
            hintText: hintText,
            valid: valid
          ,
          isObsecure: isObsecure
        );
      } else if (constraints.maxWidth > 800.0&& constraints.maxWidth < 1200.0) {
        return userNameFieldWidget(
            fieldMaxWidth: size.width * 0.55,
            marginFromTop: 20,
            textEditingController: textEditingController,
            hintText: hintText,
            valid: valid,
          isObsecure: isObsecure
        );

      } else {
        return userNameFieldWidget(
            fieldMaxWidth: size.width * 0.85,
            marginFromTop: 15,
            textEditingController: textEditingController,
            hintText: hintText,
            isObsecure: isObsecure,
            valid: valid);
      }
    });
  }
}

class CreateYourAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return CustomTextView(
          fontSize: 27,
          marginFromTop: 15,
          color: Colors.grey,
          text: "Create Your Account",
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return CustomTextView(
            fontSize: 20,
            marginFromTop: 10,
            color: Colors.grey,
            text: "Create Your Account");
      } else {
        return CustomTextView(
          fontSize: 17,
          marginFromTop: 10,
          color: Colors.grey,
          text: "Create Your Account",
          marginFromBottom: 20.0,
        );
      }
    });
  }
}

class TermsAndCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return InkWell(
          onTap: (){
            _launchURL();
          },
          child: CustomTextView(
            fontSize: 16,
            marginFromTop: 15,
            text: "Terms & Condition",
            color: Colors.green,
          ),
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return InkWell(
          onTap: (){
            _launchURL();

          },
          child: CustomTextView(
              fontSize: 15,
              marginFromTop: 10,
              text: "Terms & Condition",
              color: Colors.green),
        );
      } else {
        return InkWell(
          onTap: (){
            _launchURL();
          },
          child: CustomTextView(
              fontSize: 14,
              marginFromTop: 15,
              text: "Terms & Condition",
              color: Colors.green),
        );
      }
    });
  }
}
_launchURL() async {
  const url = 'http://flutterdevs.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
class LogInYourAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        //   return CustomTextView(fontSize: 16,marginFromTop: 15,text: "Login in your account",marginFromBottom: 40.0,);
        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          onTap: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login())),
          child: CustomTextView(
              fontSize: 16,
              marginFromTop: 15,
              text: "Already have an account?",
              marginFromBottom: 40.0,
              color: Colors.green),
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login())),
            child: CustomTextView(
                fontSize: 15,
                marginFromTop: 10,
                text: "Already have an account?",
                marginFromBottom: 25.0,
                color: Colors.green));
      } else {
        return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login())),
            child: CustomTextView(
                fontSize: 14,
                marginFromTop: 15,
                text: "Already have an account?",
                marginFromBottom: 20.0,
                color: Colors.green));
      }
    });
  }
}

class WelcomeToFoodiezHedingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return HeadingText(
          marginFromTop: 175,
          fontSize: 45,
        );
      } else if (constraints.maxWidth > 800.0&& constraints.maxWidth < 1200.0) {
        return HeadingText(
          marginFromTop: 150,
          fontSize: 35,
        );
      } else {
        return HeadingText(
          marginFromTop: 100,
          fontSize: 25,
          texMaxWidth: 150,
        );
      }
    });
  }
}
