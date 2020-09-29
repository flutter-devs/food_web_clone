
import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/common_textfield.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/utils/validator.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ForgotPasswordScreenText(),
            PleaseEnterYouEmail(),
            Form(
            key: formKey,
            child: userNameField(textEditingController: textEditingControllerEmail, size: size,hintText: "Email" ,valid: Validator().validateEmail),
            ),
            ForgotPasswordScreen(size),

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
  ForgotPasswordScreen(size) =>LayoutBuilder(
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
                Navigator.of(context).pop();


              }
            },
            child: CustomButton( buttonWidth: 250.0,marginFromTop: 30.0,buttonHeight: 50.0,buttonText: "Submit",color: Color(0xffEB5A6C),),
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
              Navigator.of(context).pop();
              }
            },
            child:CustomButton( buttonWidth: size.width*0.40,marginFromTop: 20.0,buttonHeight: 45.0,buttonText: "Submit",color: Color(0xffEB5A6C),),
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
                Navigator.of(context).pop();

              }
            },
            child: CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10.0,buttonHeight: 45.0,buttonText: "Submit",color: Color(0xffEB5A6C),),
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
            //   return CustomTextView(fontSize: 16,marginFromTop: 15,text: "ForgotPasswordScreen in your account",marginFromBottom: 40.0,);
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen())),
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
                    context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen())),
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
                    context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen())),
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




class ForgotPasswordScreenText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return CustomTextView(fontSize: 45,marginFromTop: 175,color: Colors.black,text: "Forgot Password?",);
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return CustomTextView(fontSize: 35,marginFromTop: 150,color: Colors.black,text: "Forgot Password?");
          }
          else
          {
            return CustomTextView(fontSize: 25,marginFromTop: 100,color: Colors.black,text: " Forgot Password?",marginFromBottom: 20.0,);
          }

        }
    );
  }
}


class PleaseEnterYouEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return CustomTextView(
              fontSize: 27,
              marginFromTop: 15,
              color: Colors.grey,
              text: "Please enter your email",
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
            return CustomTextView(
                fontSize: 20,
                marginFromTop: 10,
                color: Colors.grey,
                text: "Please enter your email");
          } else {
            return CustomTextView(
              fontSize: 17,
              marginFromTop: 10,
              color: Colors.grey,
              text: "Please enter your email",
              marginFromBottom: 20.0,
            );
          }
        });
  }
}