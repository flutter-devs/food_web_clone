



import 'package:flutter/material.dart';

class ProfileViewModel
{
  List<_Profile> list = [
    _Profile(text: "Account Details",imagePath: "assets/profile/account.png"),
    _Profile(text: "View Orders",imagePath: "assets/profile/order.png"),
    _Profile(text: "Address ",imagePath: "assets/profile/address.png"),
    _Profile(text: "Settings" ,imagePath: "assets/profile/profile_settings.png"),
    _Profile(text: "Contact Us",imagePath: "assets/profile/profile_phone.png"),
  ];
}

class _Profile
{
  String imagePath;
  String text;


  _Profile({this.imagePath , this.text});

}