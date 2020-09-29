import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/common_widgets/common_image.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/auth/signup/welcome_foodie_login.dart';
import 'package:food_web_clone/utils/preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    initializingList();
    super.initState();
  }

  void onDonePress() {}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return new IntroSlider(
      isShowNextBtn: false,
      renderSkipBtn: Container(),
      colorActiveDot: Colors.white,
      colorDot: Colors.white,
      slides: this.slides,
      onDonePress: () async {
        await Preferences().addLandingStatus(true);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => WelcomeFoodieLogin()));
      },
    );
  }

  itroDescription(String s, String t) => Column(
    children: <Widget>[
      HeadingText(text: s,),
      SubheadingText(text: t,)
    ],
  );

  void initializingList() {
    slides.add(
      Slide(
          backgroundColor: Color(0xffEB5A6C),
          centerWidget: Column(
            children: <Widget>[
              //   Icon(Icons.message,color: Colors.white,size: 200,),
             imageView("assets/intro/intro_search.png"),
              itroDescription(
                "Quick Search",
                "set your Location To start exploring restraunts around you",
              ),

              InkWell(
                onTap: () async {
                  await Preferences().addLandingStatus(true);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => WelcomeFoodieLogin()));
                },
                child: commonButtonView(),
              ),

            ],
          )),
    );
    slides.add(
      new Slide(
          backgroundColor: Color(0xffEB5A6C),
          centerWidget: Column(
            children: <Widget>[
              imageView("assets/intro/intro_1.png"),
              itroDescription("Variety of food",
                  "set your Location To start exploring restraunts around you"),
              InkWell(
                onTap: () async {
                  await Preferences().addLandingStatus(true);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => WelcomeFoodieLogin()));
                },
                child: commonButtonView(),
              )
            ],
          )),
    );
    slides.add(
      new Slide(
          backgroundColor: Color(0xffEB5A6C),
          centerWidget: Column(
            children: <Widget>[
              imageView("assets/intro/intro_location.png"),
              itroDescription("Search for a place",
                  "set your Location To start exploring restraunts around you"),
              InkWell(
                onTap: () async {
                  await Preferences().addLandingStatus(true);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => WelcomeFoodieLogin()));
                },
                child: commonButtonView(),
              )
            ],
          )),
    );
    slides.add(
      new Slide(
          backgroundColor: Color(0xffEB5A6C),
          centerWidget: Column(
            children: <Widget>[
              imageView("assets/intro/intro_cycle.png"),
              itroDescription("Fast Shipping",
                  "set your Location To start exploring restraunts around you"),
              InkWell(
                onTap: () async {
                  await Preferences().addLandingStatus(true);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => WelcomeFoodieLogin()));
                },
                child: commonButtonView(),
              )
            ],
          )),
    );
  }

  commonButtonView() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 250.0),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.only(left: 25, right: 25, top: 35, bottom: 35),
        child: Container(
          width: double.infinity,
          height: 40,
          alignment: Alignment.center,
          child: Text(
            "Login",
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  imageView(String s) => LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth > 1200.0) {
          return CommonImageAsset(imagePath: s,imageHeight: 300.0,imageWidth: 300.0,);

        }
        else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
          return CommonImageAsset(imagePath: s,imageHeight: 220.0,imageWidth: 220.0,);
        }
        else
        {
          return CommonImageAsset(imagePath: s,imageHeight: 180.0,imageWidth: 180.0,);
        }

      }
  );
}


class HeadingText extends StatelessWidget {

  String text;

  HeadingText({this.text});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return CustomTextView(
              fontSize: 32,
              marginFromTop: 15,
              color: Colors.white,
              text: text,
              fontWeight: FontWeight.bold,
              marginFromBottom: 20.0,
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
            return CustomTextView(
                fontSize: 27,
                marginFromTop: 10,
                color: Colors.white,
                text: text,

              marginFromBottom: 20.0,
              fontWeight: FontWeight.bold,);
          } else {
            return CustomTextView(
              fontSize: 22,
              marginFromTop: 10,
              color: Colors.white,
              text: text,
              marginFromBottom: 20.0,
              fontWeight: FontWeight.bold,
            );
          }
        });
  }
}

class SubheadingText extends StatelessWidget {

  String text;

  SubheadingText({this.text});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return CustomTextView(
              fontSize: 24,
              marginFromTop: 15,
              color: Colors.white,
              text: text,
              marginFromBottom: 20.0,
              maxWidth: 340,
            );
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200) {
            return CustomTextView(
                fontSize: 22,
                marginFromTop: 10,
                color: Colors.white,
                text: text,
               maxWidth: 340,
              marginFromBottom: 20.0,
             );
          } else {
            return CustomTextView(
              fontSize: 18.0,
              marginFromTop: 10.0,
              color: Colors.white,
              text: text,
              marginFromBottom: 20.0,
           maxWidth: 320.0,
            );
          }
        });
  }
}