import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'message.dart';

class ChatHomeScreen extends StatefulWidget {

  @override
  _ChatHomeScreenState createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  TextEditingController messageSendController = TextEditingController();
  final List<Message> _messages = <Message>[];
  File image;
  Responsive responsive = Responsive();
  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd hh:mm').format(time);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: <Widget>[
          Expanded(child: chatList()),
         messageSendView(size, formattedDate),
        ],
      ),
    );
  }

  messageSendView(size, formattedDate) => Container(
        height: responsive.getResponsiveValue(
            context: context,
            forLargeScreen: 75,
            forMediumScreen: 65,
            forShortScreen: 55),
        margin: EdgeInsets.symmetric(vertical: 10),
        width:   size.width,
        child: Row(
          mainAxisAlignment: responsive.getResponsiveValue(
              context: context,
              forLargeScreen: MainAxisAlignment.end,
              forMediumScreen: MainAxisAlignment.center,
              forShortScreen: MainAxisAlignment.center),
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            search(size),
            InkWell(
                onTap: () {
                  _sendMsg(messageSendController.text, 'right', formattedDate);
                },
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8) +EdgeInsets.only(right: responsive.getResponsiveValue(
                        context: context,
                        forLargeScreen: 32,
                        forMediumScreen: 28,
                        forShortScreen: 24)),
                    child: Icon(
                      Icons.send,
                      color: ColorConstant.buttonColor,
                      size: responsive.getResponsiveValue(
                          context: context,
                          forLargeScreen: 36,
                          forMediumScreen: 34,
                          forShortScreen: 32),
                    ))),
          ],
        ),
      );

  search(size) => Container(
   width: responsive.getResponsiveValue(
       context: context,
       forLargeScreen: size.width *.4,
       forMediumScreen: size.width *.6,
       forShortScreen: size.width *.8),
    child: TextFormField(
      textInputAction: TextInputAction.done,
      controller: messageSendController,
      textAlign: TextAlign.start,
      style: TextStyle(),
      decoration: InputDecoration(
        // fillColor: Colors.white,
        filled: true,
        labelStyle: TextStyle(),
        contentPadding: EdgeInsets.only(left: 40, top: 8, bottom: 8),
        border: _outlineBorder(),
        enabledBorder: _outlineBorder(),
        focusedBorder: _outlineBorder(),
        //  prefixIcon: Icon(Icons.search),
      ),
    ),
  );

  InputBorder _outlineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.grey));
  }

  appBar() => AppBar(
    backgroundColor: Colors.transparent,
    leading: InkWell(
      onTap: ()
      {
        Navigator.of(context).pop();
      },
      child: Icon(
        Icons.arrow_back_ios,
        size: responsive.getResponsiveValue(
            context: context,
            forLargeScreen: 24,
            forMediumScreen: 24,
            forShortScreen: 24),
        color: ColorConstant.buttonColor,
      ),
    ),
    centerTitle: true,
    elevation: 0.0,
    title:  Text(
      "FOODIE",
      style: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          color: ColorConstant.buttonColor,
          fontSize: responsive.getResponsiveValue(
              context: context,
              forLargeScreen: 30,
              forMediumScreen: 27,
              forShortScreen: 24),
          fontWeight: FontWeight.bold),
    ),
  );

  chatList() => new Column(children: <Widget>[
        //Chat list
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
      ]);

  void _sendMsg(String msg, String messageDirection, String date) {
    if (msg.length == 0) {
    } else {
      messageSendController.clear();
      Message message = new Message(
        msg: msg,
        direction: messageDirection,
        photo: image,
        UserPhoto: "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      );
      setState(() {
        _messages.insert(0, message);
      });
    }
  }

  imageSelectorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: () {

                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Camera"),
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Gallery"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }


}
