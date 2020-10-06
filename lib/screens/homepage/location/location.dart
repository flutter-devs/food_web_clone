
import 'package:flutter/material.dart';
import 'package:food_web_clone/common_widgets/common_textfield.dart';
import 'package:food_web_clone/common_widgets/custom_textview.dart';
import 'package:food_web_clone/screens/homepage/location/flag_list_widget.dart';
import 'package:food_web_clone/screens/homepage/location/location_page_widgets.dart';
import 'package:food_web_clone/utils/validator.dart';

class Location extends StatefulWidget {

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  TextEditingController textEditingControllerUsername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: size.width,
                ),
                UserCurrentLocatonLb(),
                userNameField(
                    textEditingController: textEditingControllerUsername,
                    size: size,
                    hintText: "Search The City...",
                    valid: Validator().validateEmpty),
                RecentlyVisitedCountry(),
                FavouriteDivider(),
                FlagListTileLb(),
              ],
            ),
          ),
        ),
      ),
    );

  }
  userNameField(
      {TextEditingController textEditingController,
        Size size,
        String hintText,
        var valid}) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
            return userNameFieldWidget(
                fieldMaxWidth: size.width * 0.4,
                marginFromTop: 30,
                textEditingController: textEditingController,
                hintText: hintText,
                valid: valid);
          } else if (constraints.maxWidth > 800.0 && constraints.maxWidth < 1200.0) {
            return userNameFieldWidget(
                fieldMaxWidth: size.width * 0.55,
                marginFromTop: 20,
                textEditingController: textEditingController,
                hintText: hintText,
                valid: valid);

          } else {
            return userNameFieldWidget(
                fieldMaxWidth: size.width * 0.85,
                marginFromTop: 15,
                textEditingController: textEditingController,
                hintText: hintText,
                valid: valid);
          }
        });
  }

}

class FlagListTileLb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return FlagListTile(
              marginLeftOfFlag: 20.0,
              marginTopItem: 10.0,
              fontSizeOfText: 22.0,
              heightOfFlag: 45.0,
              widthOfFlag: 65.0,
              itemHeight: 100,
              marginFromFlag: 20.0,
              sizeOfIcon: 32.0,
              marginRightFromFlag: 20.0,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return FlagListTile(
              marginLeftOfFlag: 15.0,
              marginTopItem: 10.0,
              fontSizeOfText: 18.0,
              heightOfFlag: 35.0,
              widthOfFlag: 45.0,
              itemHeight: 80,
              marginFromFlag: 15.0,
              sizeOfIcon: 28.0,
              marginRightFromFlag: 15.0,
            );
          }
          else
          {
            return FlagListTile(
              marginLeftOfFlag: 10.0,
              marginTopItem: 5.0,
              fontSizeOfText: 14.0,
              heightOfFlag: 20.0,
              widthOfFlag: 30.0,
              itemHeight: 50,
              marginFromFlag: 10.0,
              sizeOfIcon: 22.0,
              marginRightFromFlag: 10.0,
            );
          }

        }
    );
  }
}


class FavouriteDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200.0) {
        return Container(
          margin: EdgeInsets.only(top: 10.0, left: 20, right: 20),
          height: 0.8,
          width: size.width,
          color: Colors.grey,
        );
      } else if (constraints.maxWidth > 800.0 &&
          constraints.maxWidth < 1200.0) {
        return Container(
          margin: EdgeInsets.only(top: 8.0, left: 20, right: 20),
          height: 0.8,
          width: size.width,
          color: Colors.grey,
        );
      } else {
        return Container(
          margin: EdgeInsets.only(top: 5.0,right: 10.0,left: 20.0),
              height: 0.8,
              width: size.width,
              color: Colors.grey,
            );
          }

        }
    );
  }
}

class RecentlyVisitedCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return CustomTextView(fontSize: 35.0,marginFromTop: 45.0,color: Colors.black,text: "Recently Visited Country",alignment: Alignment.topLeft,marginFromLeft: 20.0, fontWeight: FontWeight.bold,);
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return CustomTextView(fontSize: 25.0,marginFromTop: 35.0,color: Colors.black,text: "Recently Visited Country",alignment: Alignment.topLeft,marginFromLeft: 20.0,fontWeight: FontWeight.bold);
          }
          else
          {
            return CustomTextView(fontSize: 18.0,marginFromTop: 20.0,color: Colors.black,text: "Recently Visited Country",alignment: Alignment.topLeft,marginFromLeft: 20.0,fontWeight: FontWeight.bold);
          }

        }
    );
  }
}

class UserCurrentLocatonLb extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth > 1200.0) {
            return UserCurrentLocaton(
              fontSizeOfBackIcon: 26,
              fontSizeOfText: 26,
              maginFromLeftIcon: 40,
              marginLeftFromIcon: 20,
              marginTopItem: 50,
            );
          }
          else if(constraints.maxWidth >800.0 && constraints.maxWidth <1200) {
            return UserCurrentLocaton(
              fontSizeOfBackIcon: 21,
              fontSizeOfText: 21,
              maginFromLeftIcon: 15,
              marginLeftFromIcon: 15,
              marginTopItem: 30,
            );
          }
          else
          {
            return UserCurrentLocaton(
              fontSizeOfBackIcon: 18.0,
              fontSizeOfText: 18.0,
              maginFromLeftIcon: 10.0,
              marginLeftFromIcon: 10.0,
              marginTopItem: 20.0,
            );
          }

        }
    );
  }
}


