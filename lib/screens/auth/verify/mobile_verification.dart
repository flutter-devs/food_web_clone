
import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/custom_button.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/homepage/homepage.dart';

class MobileVerificationScreen extends StatefulWidget {
  @override
  _MobileVerificationScreenState createState() => _MobileVerificationScreenState();
}

class _MobileVerificationScreenState extends State<MobileVerificationScreen> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  FocusNode firstOTPFocusNode = FocusNode();
  FocusNode secondOTPFocusNode = FocusNode();
  FocusNode thirdOTPFocusNode = FocusNode();
  FocusNode fourthOTPFocusNode = FocusNode();
  FocusNode fisthOTPFocusNode = FocusNode();
  FocusNode sixthOTPFocusNode = FocusNode();

  TextEditingController firstOTPFieldController = TextEditingController();
  TextEditingController secondOTPFieldController = TextEditingController();
  TextEditingController thirdOTPFieldController = TextEditingController();
  TextEditingController fourthOTPFieldController = TextEditingController();
  TextEditingController fifthOTPFieldController = TextEditingController();
  TextEditingController sixthOTPFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MobileVerificationScreenText(),
            PleaseEnterYouEmail(),
            otpConfirmationField(),
            mobileVerificationScreen(size),

          ],
        ),
      ),
    );
  }

  mobileVerificationScreen(size) =>
      LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 1200.0) {
              // return CustomButton( buttonWidth: 250,marginFromTop: 30,);
              return InkWell
                (
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,

                onTap: () {
              //   if (formKey.currentState!=null&&formKey.currentState.validate()) {
              print("yes its hit");
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));

              // }
            },
                child: CustomButton(buttonWidth: 250.0,
                  marginFromTop: 30.0,
                  buttonHeight: 50.0,
                  buttonText: "Verify Now",
                  color: Color(0xffEB5A6C),),
              );
            }
            else
            if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
              return InkWell
                (
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,

                onTap: () {
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
                  // if (formKey.currentState!=null&&formKey.currentState.validate()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));

                  print("yes its hit");
                  //}
                },
                child: CustomButton(buttonWidth: size.width * 0.40,
                  marginFromTop: 20.0,
                  buttonHeight: 45.0,
                  buttonText: "Verify Now",
                  color: Color(0xffEB5A6C),),
              );
            }
            else {
              // return  CustomButton( buttonWidth: size.width*0.9,marginFromTop: 10,buttonHeight: 45,);
              return InkWell
                (
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,

                onTap: () {
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileVerificationScreen()));
                  // if (formKey.currentState!=null&&formKey.currentState.validate()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));

                  print("yes its hit");
                  //}
                },
                child: InkWell(
                  onTap: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));

                  },
                  child: CustomButton(buttonWidth: size.width * 0.9,
                    marginFromTop: 10.0,
                    buttonHeight: 45.0,
                    buttonText: "Verify Now",
                    color: Color(0xffEB5A6C),),
                ),
              );
            }
          }
      );

  otpConfirmationField() =>
      Container(
        margin: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            _textField(
                focusnode: secondOTPFocusNode,
                textEditingController: secondOTPFieldController,
                nextFocusNode: thirdOTPFocusNode
            ), _textField(
                focusnode: thirdOTPFocusNode,
                textEditingController: thirdOTPFieldController,
                nextFocusNode: fourthOTPFocusNode
            ), _textField(
                focusnode: fourthOTPFocusNode,
                textEditingController: fourthOTPFieldController,
                nextFocusNode: fisthOTPFocusNode
            ), _textField(
              focusnode: fisthOTPFocusNode,
              textEditingController: fifthOTPFieldController,
              nextFocusNode: sixthOTPFocusNode,
            ),

          ],
        ),
      );

  Widget _textField({String icon,
    String hint,
    int maxLengths,
    bool autoFocus = false,
    bool lastField = false,
    var validator,
    bool autoVal = true,
    bool isObscure = true,
    TextEditingController textEditingController,
    String iconData,
    bool keyboardTypeNumber = true,
    FocusNode focusnode,
    FocusNode nextFocusNode,
    String onChanged}) {
    _fieldFocusChange(FocusNode currentFocus, FocusNode nextFocus) {
      currentFocus.unfocus();
      if (nextFocus == null) {
        nextFocus.unfocus();
      }
      FocusScope.of(context).requestFocus(nextFocus);
    }

    return Container(
      height: 48,
      width: 50,
      child: Center(
        child: TextFormField(
          keyboardType: keyboardTypeNumber
              ? TextInputType.number
              : TextInputType.text,
          autofocus: autoFocus,
          focusNode: focusnode,
          textInputAction: TextInputAction.done,
          validator: validator,
          autovalidate: autoVal,
          showCursor: true,
          onFieldSubmitted: (value) =>
              _fieldFocusChange(focusnode, nextFocusNode),
          onChanged: (value) => _fieldFocusChange(focusnode, nextFocusNode),
          maxLength: maxLengths,
          textAlign: TextAlign.start,
          controller: textEditingController,
          obscureText: isObscure,
          style: TextStyle(),
          decoration: InputDecoration(

            fillColor: Color(0xffF0F0F0),
            filled: true,
            hintText: hint,
            hintStyle: TextStyle(fontSize: 14),
            labelStyle: TextStyle(),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder:
            OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                borderSide: BorderSide(color: Colors.white)),

          ),
        ),
      ),
    );
  }

}
class SignUpWithAnAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            //   return CustomTextView(fontSize: 16,marginFromTop: 15,text: "MobileVerificationScreen in your account",marginFromBottom: 40.0,);
            return InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MobileVerificationScreen())),
              child: CustomTextView(
                  fontSize: 16,
                  marginFromTop: 15,
                  text: "Sign up an account",
                  marginFromBottom: 40.0,
                  color: Colors.green),
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
            return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MobileVerificationScreen())),
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
                    context, MaterialPageRoute(builder: (context) => MobileVerificationScreen())),
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




class MobileVerificationScreenText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return CustomTextView(fontSize: 45,marginFromTop: 175,color: Colors.black,text: "Verify Your Mobile",);
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return CustomTextView(fontSize: 35,marginFromTop: 150,color: Colors.black,text: "Verify Your Mobile");
          }
          else
          {
            return CustomTextView(fontSize: 25,marginFromTop: 100,color: Colors.black,text: "Verify Your Mobile",marginFromBottom: 20.0,);
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
              text: "Enter your code here",
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
            return CustomTextView(
                fontSize: 20,
                marginFromTop: 10,
                color: Colors.grey,
                text: "Enter your code here");
          } else {
            return CustomTextView(
              fontSize: 17,
              marginFromTop: 10,
              color: Colors.grey,
              text: "Enter your code here",
              marginFromBottom: 20.0,
            );
          }
        });
  }
}