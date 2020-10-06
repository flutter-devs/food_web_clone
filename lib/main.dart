import 'package:flutter/material.dart';
import 'package:food_web_clone/bloc/landing_bloc.dart';
import 'package:food_web_clone/screens/auth/intro/intro_screen.dart';
import 'package:food_web_clone/screens/auth/signup/welcome_foodie_login.dart';
import 'package:food_web_clone/screens/homepage/homepage.dart';
import 'package:food_web_clone/screens/homepage/profile/address/address.dart';
import 'package:food_web_clone/screens/homepage/profile/edit_profile/edit_profile.dart';
import 'package:food_web_clone/screens/homepage/profile/order_details/order_details.dart';
import 'package:food_web_clone/screens/homepage/profile/profile.dart';
import 'package:food_web_clone/screens/homepage/profile/settings/settings.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool landingPage ;

  LandingBloc _landingBloc;


  @override
  void initState() {
    _landingBloc = LandingBloc();
    _landingBloc.updateLoginStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Demo',
      theme: ThemeData(
        cursorColor: Colors.black,
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamBuilder(
          stream: _landingBloc.getLandingPageStream,
          builder: (context ,snapshot){
            if (snapshot.hasData) {
            return snapshot.data == true ? WelcomeFoodieLogin() : IntroScreen();
           //   return ();
           //      return HomePage();
            } else {
              return Center();
            }
          })
      ,
    );
  }
}


