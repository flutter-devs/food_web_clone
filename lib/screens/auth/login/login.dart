
import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/common_textfield.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/auth/forgot_password/forgot_password.dart';
import 'package:food_web_clone/screens/auth/signup/welcome_foodie_login.dart';
import 'package:food_web_clone/screens/auth/verify/mobile_verification.dart';
import 'package:food_web_clone/utils/validator.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              WelcomeToFoodiezHedingText(),
              LoginText(),
         Form(
           key: formKey,
           child: Column(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[
               userNameField(textEditingController: textEditingControllerEmail, size: size,hintText: "Email" ,valid: Validator().validateEmail,isObsecure: false),
               userNameField(textEditingController: textEditingControllerPassword, size: size,hintText: "Password" ,valid: Validator().validateEmpty,isObsecure: true),
             ],
           ),
         ),
              ForgotPasswordText(),
              login(size),
             // Spacer(),
              SignUpWithAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
  userNameField({TextEditingController textEditingController, Size size ,String hintText , var valid, bool isObsecure=false}) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return userNameFieldWidget(fieldMaxWidth: size.width*0.4,marginFromTop: 30,textEditingController: textEditingController,hintText: hintText , valid:valid ,isObsecure: isObsecure);
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return userNameFieldWidget(fieldMaxWidth: size.width*0.55,marginFromTop: 20,textEditingController: textEditingController,hintText: hintText ,valid: valid,isObsecure: isObsecure);
            //  return UserNameFieldWidget(fieldMaxWidth: size.width*0.55,marginFromTop: 20,textEditingController: textEditingController,);
          }
          else
          {
            return userNameFieldWidget(fieldMaxWidth: size.width*0.85,marginFromTop: 15,textEditingController: textEditingController,hintText: hintText ,valid: valid,isObsecure: isObsecure) ;
          }
        }
    );
  }
  login(size) =>LayoutBuilder(
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

              if( formKey.currentState.validate())
              {
                print("yes its hit");
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
              }
            },
            child: CustomButton( buttonWidth: 250.0,marginFromTop: 30.0,buttonHeight: 50.0,buttonText: "Login",color: Color(0xffEB5A6C),),
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
              if( formKey.currentState.validate())
              {
                print("yes its hit");
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
              }
            },
            child:CustomButton( buttonWidth: size.width*0.40,marginFromTop: 20.0,buttonHeight: 45.0,buttonText: "Login",color: Color(0xffEB5A6C),),
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
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
              if( formKey.currentState.validate())
              {
                print("yes its hit");
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
              }
            },
            child: CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10.0,buttonHeight: 45.0,buttonText: "Login",color: Color(0xffEB5A6C),),
          );
        }
      }
  );


}


class SignUpWithAnAccount extends StatelessWidget {
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
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => WelcomeFoodieLogin())),
              child: CustomTextView(
                  fontSize: 16,
                  marginFromTop: 15,
                  text: "Don't have an account?",
                  marginFromBottom: 40.0,
                  color: Colors.green),
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
            return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => WelcomeFoodieLogin())),
                child: CustomTextView(
                    fontSize: 15,
                    marginFromTop: 10,
                    text: "Don't have an account?",
                    marginFromBottom: 25.0,
                    color: Colors.green));
          } else {
            return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => WelcomeFoodieLogin())),
                child: CustomTextView(
                    fontSize: 14,
                    marginFromTop: 15,
                    text: "Don't have an account?",
                    marginFromBottom: 20.0,
                    color: Colors.green));
          }
        });
  }
}


class ForgotPasswordText extends StatelessWidget {

  @override Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPasswordScreen())),
              child: CustomTextView(
                fontSize: 16, marginFromTop: 15, text: "Forgot Password?",color: Colors.green,alignment: Alignment.topRight,maxWidth:size.width*0.4 ,),
            );
          }
          else
          if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPasswordScreen())),
              child: CustomTextView(
                  fontSize: 15, marginFromTop: 10, text: "Forgot Password?",color: Colors.green,alignment: Alignment.topRight,maxWidth:size.width*0.55 ),
            );
          }
          else {
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPasswordScreen())),
              child: CustomTextView(
                  fontSize: 14, marginFromTop: 15, text: "Forgot Password?",color: Colors.green,alignment: Alignment.topRight,maxWidth:size.width*0.85,),
            );
          }
        }
    );
  }


}

class LoginText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return LayoutBuilder(
       builder: (BuildContext context, BoxConstraints constraints) {
         if(constraints.maxWidth > 1200.0) {
           return CustomTextView(fontSize: 27,marginFromTop: 15,color: Colors.grey,text: "Login",);
         }
         else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
           return CustomTextView(fontSize: 20,marginFromTop: 10, color: Colors.grey,text: "Login");
         }
         else
         {
           return CustomTextView(fontSize: 17,marginFromTop: 10,color: Colors.grey,text: "Login",marginFromBottom: 20.0,);
         }

       }
   );
  }
}
