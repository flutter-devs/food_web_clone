import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';

class Message extends StatefulWidget {
  Message({this.msg, this.direction , this.photo ,this.UserPhoto});
final String UserPhoto;
  final String msg;
  final String direction;
final File photo;

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  Responsive responsive = Responsive();
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: widget.direction == 'left'
          ? new Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Stack(
                    children: <Widget>[
                      //for left corner

                      new Image.asset(
                        'assets/images/in.png',
                        fit: BoxFit.scaleDown,
                        width: 30.0,
                        height: 30.0,
                      ),

                      new Container(
                        margin: EdgeInsets.only(left: 6.0),
                        decoration: new BoxDecoration(
                          color: Color(0xffd6d6d6),
                          border: new Border.all(
                              color: Color(0xffd6d6d6),
                              width: .25,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            topLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(0.0),
                            bottomLeft: Radius.circular(0.0),
                          ),
                        ),
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(
                          widget.msg,
                          style: new TextStyle(
                            fontFamily: 'Gamja Flower',
                            fontSize: 20.0,
                            color: Color(0xff000000),
                          ),
                        ),
                        width: 180.0,
                      ),
                    ],
                  ),

                  //date time

                ],
              ),
            ],
          ))
          : Container(
        margin: EdgeInsets.only(left: 20),
            child: new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[

           widget.photo==null? ClipPath(
              clipper: ChatBackgroundClipper(),
              child: new Container(
                constraints: new BoxConstraints(
                  minWidth: 0.0,
                  maxWidth: MediaQuery.of(context).size.width*0.80,
                ),

                color: Color(0xffEB5A6C),
                padding:const EdgeInsets.only(left: 10,right: 19,top: 10,bottom: 28),
                child:  new Text(
                  widget.msg,
                  style: new TextStyle(
                    fontSize:
                    responsive.getResponsiveValue(
                        context: context,
                        forLargeScreen: 24,
                        forMediumScreen: 22,
                        forShortScreen: 18),
                    color: Color(0xffffffff),

                  ),
                ),
                // width: 180.0,
              ),
            ):    ClipPath(
             clipper: ChatPhotoClipper(),
             child: new Container(
               constraints: new BoxConstraints(
                 minWidth: 0.0,
                 maxWidth: MediaQuery.of(context).size.width*0.80,
               ),

               color: Colors.blue,
               padding:widget.photo==null? const EdgeInsets.only(left: 10,right: 19,top: 10,bottom: 28):null,
               child:  widget.photo == null? new Text(
                 widget.msg,
                 style: new TextStyle(
                   fontSize: 20.0,
                   color: Color(0xffffffff),

                 ),
               ):Container(
                 height: 200,
                 width: MediaQuery.of(context).size.width*0.70,
                 color: Color(0xffEB5A6C),
                 child: Image(
                   image: FileImage(widget.photo),
                   fit: BoxFit.cover,
                 ),
               ),
               // width: 180.0,
             ),
           ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.network(widget.UserPhoto,width:  responsive.getResponsiveValue(
                    context: context,
                    forLargeScreen: 60,
                    forMediumScreen: 52,
                    forShortScreen: 40),height:  responsive.getResponsiveValue(
                    context: context,
                    forLargeScreen: 60,
                    forMediumScreen: 52,
                    forShortScreen: 40),fit: BoxFit.cover,),
              ),
            ),
        ],
      ),
          ),
    );
  }
}

class ChatPhotoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height*0.20);
    path.lineTo(0.0, size.height*0.70);
    path.quadraticBezierTo(0, size.height*0.95, 15, size.height*0.95);
    path.lineTo(size.width-20, size.height*0.95);
    path.quadraticBezierTo(size.width-10, size.height-10, size.width, size.height);
    path.quadraticBezierTo(size.width-10, size.height*0.90, size.width-10, 15.0);
    //  path.lineTo(size.width, 0.0);
    path.quadraticBezierTo(size.width-12, 0.0, size.width-30, 0.0);
    path.lineTo(15.0 , 0.0);
    path.quadraticBezierTo(0.0, 0.0, 0.0,size.height*0.20);
    //   path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}

class ChatBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    var path = Path();
    path.moveTo(0.0, size.height*0.20);
    path.lineTo(0.0, size.height*0.60);
    path.quadraticBezierTo(0, size.height*0.80, 15, size.height*0.80);
    path.lineTo(size.width-20, size.height*0.80);
    path.quadraticBezierTo(size.width-10, size.height-10, size.width, size.height);
    path.quadraticBezierTo(size.width-10, size.height*0.90, size.width-10, 15.0);
    path.quadraticBezierTo(size.width-12, 0.0, size.width-30, 0.0);
    path.lineTo(15.0 , 0.0);
    path.quadraticBezierTo(0.0, 0.0, 0.0,size.height*0.20);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}