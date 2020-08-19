import 'dart:async';

import 'package:food_web_clone/utils/preferences.dart';


class LandingBloc {

  bool landingpage;

  StreamController<bool> landingController = StreamController<bool>();

  Stream get getLandingPageStream => landingController.stream;

  updateLoginStatus() async {
    landingpage = await Preferences().getLandingStatus() ??false;
    print("is Login $landingpage");
    landingController.sink.add(landingpage);
  }

  void dispose() {
    landingController.close();
  }
}