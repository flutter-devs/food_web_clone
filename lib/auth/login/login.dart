
import 'package:flutter/material.dart';
import 'package:food_web_clone/auth/forgot_password/forgot_password.dart';
import 'package:food_web_clone/auth/verify/mobile_verification.dart';
import 'package:food_web_clone/common_widgets/common_textfield.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
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
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            LoginText(),
       Form(
         key: formKey,
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             userNameField(textEditingController: textEditingControllerEmail, size: size,hintText: "Email" ,valid: Validator().validateEmail),
             userNameField(textEditingController: textEditingControllerPassword, size: size,hintText: "Password" ,valid: Validator().validateEmpty),
           ],
         ),
       ),
            ForgotPasswordText(),
            login(size),
            Spacer(),
            SignUpWithAnAccount(),
          ],
        ),
      ),
    );
  }
  userNameField({TextEditingController textEditingController, Size size ,String hintText , var valid}) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return userNameFieldWidget(fieldMaxWidth: size.width*0.4,marginFromTop: 30,textEditingController: textEditingController,hintText: hintText , valid:valid );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return userNameFieldWidget(fieldMaxWidth: size.width*0.55,marginFromTop: 20,textEditingController: textEditingController,hintText: hintText ,valid: valid);
            //  return UserNameFieldWidget(fieldMaxWidth: size.width*0.55,marginFromTop: 20,textEditingController: textEditingController,);
          }
          else
          {
            return userNameFieldWidget(fieldMaxWidth: size.width*0.85,marginFromTop: 15,textEditingController: textEditingController,hintText: hintText ,valid: valid) ;
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
            child: CustomButton( buttonWidth: 250,marginFromTop: 30,buttonHeight: 50,buttonText: "Login",color: Color(0xffEB5A6C),),
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
            child:CustomButton( buttonWidth: size.width*0.40,marginFromTop: 20,buttonHeight: 45,buttonText: "Login",color: Color(0xffEB5A6C),),
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
            child: CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10,buttonHeight: 45,buttonText: "Login",color: Color(0xffEB5A6C),),
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
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login())),
              child: CustomTextView(
                  fontSize: 16,
                  marginFromTop: 15,
                  text: "Sign up an account",
                  marginFromBottom: 40.0,
                  color: Colors.green),
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
            return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login())),
                child: CustomTextView(
                    fontSize: 15,
                    marginFromTop: 10,
                    text: "Sign up an account",
                    marginFromBottom: 25.0,
                    color: Colors.green));
          } else {
            return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login())),
                child: CustomTextView(
                    fontSize: 14,
                    marginFromTop: 15,
                    text: "Sign up an account",
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
           return CustomTextView(fontSize: 45,marginFromTop: 175,color: Colors.black,text: "Login",);
         }
         else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
           return CustomTextView(fontSize: 35,marginFromTop: 150,color: Colors.black,text: "Login");
         }
         else
         {
           return CustomTextView(fontSize: 25,marginFromTop: 100,color: Colors.black,text: "Login",marginFromBottom: 20.0,);
         }

       }
   );
  }
}
