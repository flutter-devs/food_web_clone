import 'package:flutter/material.dart';
import 'package:food_web_clone/auth/intro/intro_screen.dart';
import 'package:food_web_clone/auth/welcome_foodie_login/welcome_foodie_login.dart';
import 'package:food_web_clone/bloc/landing_bloc.dart';
import 'package:food_web_clone/homepage/detail_page_view/detailpage_view.dart';
import 'package:food_web_clone/homepage/favourite/favourite.dart';
import 'package:food_web_clone/homepage/homepage.dart';
import 'package:food_web_clone/homepage/homeview.dart';
import 'package:food_web_clone/homepage/location/location.dart';


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
      title: 'Flutter Demo',
      theme: ThemeData(
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamBuilder(
          stream: _landingBloc.getLandingPageStream,
          builder: (context ,snapshot){
            if (snapshot.hasData) {

            //  return snapshot.data == true ? WelcomeFoodieLogin() : IntroScreen();
              return DetailPageView();

            } else {
              return Center();
            }
          })
      ,
    );
  }
}


