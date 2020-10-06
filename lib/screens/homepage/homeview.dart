import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/homepage/homepage_view_model.dart';
import 'package:food_web_clone/screens/homepage/homepage_widgets.dart';
import 'package:food_web_clone/screens/homepage/see_all_trending/trending.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomePageViewModel homePageViewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: size.width,
              ),
              Sydney(),
              searchField(size),
              topHorizontalImagesList(size),
              mostPopularSeeAllTextRowLb(size, "Most Popular", "See all"),
              MostPopularListLb(),
              SizedBox(
                height: 10,
              ),
              mostPopularSeeAllTextRowLb(size, "Meals Deals", "See all"),
              MealsDealsListLb(),
              SizedBox(
                height: 50,
              ),
              mostPopularSeeAllTextRowLb(
                  size, "Popular Restaurants", "See all"),
              PopularRestaurantsLb(),
            ],
          ),
        ),
      ),
    );
  }

  field({var width, var marginFromTop}) => Container(
        padding: EdgeInsets.only(top: marginFromTop),
        width: width,
        child: TextFormField(
          autofocus: false,
          textAlign: TextAlign.start,
          style: TextStyle(),
          decoration: InputDecoration(
            focusColor: Colors.transparent,
            fillColor: Colors.white,
            hoverColor: Colors.transparent,
            //focusColor: Colors.transparent,
            filled: true,
            hintText: "Search for restraunts...",
            prefixIcon: Container(
                margin: EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 22,
                )),
            hintStyle: GoogleFonts.lato(color: Colors.grey, fontSize: 16),
            labelStyle: GoogleFonts.roboto(fontStyle: FontStyle.normal),
            contentPadding:
                EdgeInsets.only(left: 40, top: 8, bottom: 8, right: 20),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
      );

  topHorizontalImagesList(Size size) => LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200.0) {
          return customCarousel(size: size, height: 350.0, marginFromTop: 30.0);
        } else if (constraints.maxWidth > 800.0 &&
            constraints.maxWidth < 1200.0) {
          return customCarousel(size: size, height: 250.0, marginFromTop: 20.0);
        } else {
          return customCarousel(size: size, height: 200.0, marginFromTop: 20.0);
        }
      });

  mostPopularSeeAllTextRowLb(Size size , String text_1, String text_2) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return mostPopularSeeAllTextRow(
          text_1: text_1,
            text_2: text_2,
            fontSizeF: 21.0, fontSizeS: 18, marginFromTop: 20.0);
      } else if (constraints.maxWidth > 800.0&& constraints.maxWidth < 1200.0) {
        return mostPopularSeeAllTextRow(
            text_1: text_1,
            text_2: text_2,
            fontSizeF: 18.0, fontSizeS: 16.0, marginFromTop: 15.0);
      } else {
        return mostPopularSeeAllTextRow(
            text_1: text_1,
            text_2: text_2,
            fontSizeF: 15.0, fontSizeS: 14.0, marginFromTop: 10.0);
      }
    });
  }

  searchField(size) => LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200.0) {
          return field(width: size.width * 0.40, marginFromTop: 30.0);
        } else if (constraints.maxWidth > 800.0 &&
            constraints.maxWidth < 1200.0) {
          return field(width: size.width * 0.55, marginFromTop: 20.0);
        } else {
          return field(width: size.width * 0.85, marginFromTop: 10.0);
        }
      });

  customCarousel({ var size, var height, var marginFromTop}) {
    return Container(
        margin: EdgeInsets.only(top: marginFromTop),
        height: height,
        width: size.width,
        child: Carousel(
          images: imageItems(),
          dotSize: 4.0,
          autoplay: true,
          dotSpacing: 15.0,
          dotColor: Colors.white,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.transparent,
          borderRadius: true,
        ));
  }

  imageItems() {
    List<Widget> list = List<Widget>();
    for (int i = 0; i < 5; i++) {
      list.add(
        Image.asset(
          HomePageViewModel().listOfImages[i],
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
        ),
      );
    }
    return list;
  }

  mostPopularSeeAllTextRow({var fontSizeF, var fontSizeS, var marginFromTop , String text_1, String text_2}) {
    return Container(
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width * 0.96,
      margin: EdgeInsets.only(top: marginFromTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            text_1,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: fontSizeF,
                fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: ()
            {

              Navigator.push(context, MaterialPageRoute(builder: (context)=> TrendingPage()));

            },
            child: Text(
              text_2,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                color: Colors.green,
                fontSize: fontSizeF,
              ),
            ),
          ),
//        CustomTextView(
//          fontSize: fontSizeS,
//          marginFromTop: 15,
//          color: Colors.green,
//          text: "See App",
//        ),
        ],
      ),
    );
  }
}

class PopularRestaurantsLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return PopularRestaurantsList(
              marginOfItem: 25.0,
              heightOfView: 220.0,
              cardSymetricMArgin: 10.0,
              imageHeight: 220.0,
              imageWidth: 170.0,

            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return PopularRestaurantsList(
              marginOfItem: 20.0,
              heightOfView: 170.0,
              cardSymetricMArgin: 10.0,
              imageHeight: 170.0,
              imageWidth: 160.0,

            );
          }
          else
          {
            return PopularRestaurantsList(
              marginOfItem: 15.0,
              heightOfView: 150.0,
              cardSymetricMArgin: 10.0,
               imageHeight: 150.0,
              imageWidth: 140.0,

            );
          }

        }
    );
  }
}

class MealsDealsListLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return  LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return MealsDealList(
              heightOfView: 350.0,
              marginFromBottom: 20.0,
              fontSize: 22,
              marginFromLeft: 20.0,
              marginFromTop: 10.0,
              imageWidth: 220.0,
              fontSizeOfAdress: 18.0,
              maxWidthOfAddress: 190.0,
              marginFromTopAdress: 10.0,
              cardSymetricMArgin: 14.0,
              marginOfItem: 40.0,
              bottomPositionedDish: 70.0,
              bottomPositionedPlaces: 35.0,
              marginFromLeftYellowHighlighter: 18.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200.0) {
            return MealsDealList(
              heightOfView: 300.0,
              marginFromBottom: 20.0,
              fontSize: 20.0,
              marginFromLeft: 10.0,
              marginFromTop: 10.0,
              imageWidth: 200.0,
              fontSizeOfAdress: 15.0,
              maxWidthOfAddress: 180.0,
              marginFromTopAdress: 10.0,
              cardSymetricMArgin: 12.0,
              marginOfItem: 30.0,
              bottomPositionedDish: 60.0,
              bottomPositionedPlaces: 25.0,
              marginFromLeftYellowHighlighter: 16.0,
            );
          }
          else
          {

            return MealsDealList(
              bottomPositionedDish: 50.0,
              bottomPositionedPlaces: 20.0,
              marginFromBottom: 20.0,
              fontSize: 18.0,
              marginFromLeft: 10.0,
              marginFromTop: 10.0,
              imageWidth: 160.0,
              fontSizeOfAdress: 13.0,
              maxWidthOfAddress: 150.0,
              marginFromTopAdress: 10.0,
              cardSymetricMArgin: 10.0,
              marginOfItem: 10.0,
              heightOfView: 265.0,
              marginFromLeftYellowHighlighter: 15.0,
            );
          }

        }
    );
  }
  
}


class MostPopularListLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return MostPopularList(
              heightOfView: 350.0,
              marginFromBottom: 20.0,
              fontSize: 22.0,
              marginFromLeft: 20.0,
              marginFromTop: 10.0,
              imageWidth: 220.0,
              imageHeight: 220.0,
              fontSizeOfAdress: 18.0,
              maxWidthOfAddress: 190.0,
              marginFromTopAdress: 10.0,
              cardSymetricMArgin: 14.0,
              marginOfItem: 40.0,

            );
          } else if (constraints.maxWidth > 800.0 &&
              constraints.maxWidth < 1200) {
            return MostPopularList(
              heightOfView: 300.0,
              marginFromBottom: 20.0,
              fontSize: 20.0,
              marginFromLeft: 10.0,
              marginFromTop: 10.0,
              imageWidth: 200.0,
              imageHeight: 190.0,
              fontSizeOfAdress: 15.0,
              maxWidthOfAddress: 180.0,
              marginFromTopAdress: 10.0,
              cardSymetricMArgin: 12.0,
              marginOfItem: 30.0,
            );
          } else {
            return MostPopularList(
              heightOfView: 265.0,
              marginFromBottom: 20.0,
              fontSize: 18.0,
              marginFromLeft: 10.0,
              marginFromTop: 10.0,
              imageWidth: 160.0,
              imageHeight: 170.0,
              fontSizeOfAdress: 13.0,
              maxWidthOfAddress: 150.0,
              marginFromTopAdress: 10.0,
              cardSymetricMArgin: 10.0,
              marginOfItem: 10.0,
            );
          }
        });
  }
}

class Sydney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1200.0) {
        return CustomTextView(
          fontSize: 57,
          marginFromTop: 35,
          color: Colors.black,
          text: "Sydney CBD",
          fontWeight: FontWeight.bold,
        );
      } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
        return CustomTextView(
            fontSize: 37,
            marginFromTop: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            text: "Sydney CBD");
      } else {
        return CustomTextView(
          fontSize: 20,
          marginFromTop: 30,
          color: Colors.black,
          text: "Sydney CBD",
          marginFromBottom: 20.0,
          fontWeight: FontWeight.bold,
        );
      }
    });
  }
}
