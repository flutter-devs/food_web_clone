import 'package:flutter/material.dart';

class CommonImageAsset extends StatelessWidget {
  String imagePath;
  double imageHeight;
  double imageWidth;

  CommonImageAsset({this.imagePath , this.imageWidth ,this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(imagePath ,height: imageHeight,width: imageWidth,fit: BoxFit.cover,));
  }
}