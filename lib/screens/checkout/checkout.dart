import 'package:flutter/material.dart';
import 'package:food_web_clone/screens/checkout/checkout_mob_view.dart';
import 'package:food_web_clone/screens/checkout/checkout_tab_view.dart';
import 'package:food_web_clone/screens/checkout/checkout_web_view.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
         smallScreen: CheckoutMobVew(),
         mediumScreen: CheckoutTabVew(),
         largeScreen: CheckoutWebVew(),
    );
  }
}
