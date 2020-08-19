import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static const Intro_Slider = "Intro_Slider";



  addLandingStatus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(Intro_Slider, value);
  }

  Future<bool> getLandingStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Intro_Slider) ?? false;
  }

}
