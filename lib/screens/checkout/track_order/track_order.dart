import 'package:flutter/material.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/checkout/track_order/widgets/appbar.dart';
import 'package:food_web_clone/screens/checkout/track_order/widgets/delivery_boy_detailview.dart';
import 'package:food_web_clone/screens/checkout/track_order/widgets/delivery_time.dart';
import 'package:food_web_clone/screens/homepage/homepage.dart';
import 'package:food_web_clone/utils/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackOrder extends StatefulWidget {
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  Responsive responsive = Responsive();

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            EstimateDeliveryTime(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width:  responsive.getResponsiveValue(
                      context: context,
                      forLargeScreen: size.width*.6,
                      forMediumScreen: size.width *.8,
                      forShortScreen: size.width *.9) ,

                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                ),
              ],
            ),
            DeliveryBoyDetailView(),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.symmetric(vertical: 25.0) +EdgeInsets.only(left: 20.0 ,),

              width:  responsive.getResponsiveValue(
                  context: context,
                  forLargeScreen: size.width*.6,
                  forMediumScreen: size.width *.8,
                  forShortScreen: size.width *.9) ,

              child: Stepper(

                currentStep: 3,
                onStepTapped: (index) {
                  setState(() {
                    _index = index;
                  });
                },
                controlsBuilder: (BuildContext context,
                    {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
                    Container(),


                steps: [

                  Step(
                    content: Container(),
                    isActive: false,
                state: StepState.complete,
                    title: StepperTitle(text: "Ordered confirmed",),

                  ),
                  Step(
                    content: Container(),
                    state: StepState.complete,
                    title: StepperTitle(text: "Preparing your order",),

                  ),
                  Step(
                    content: Container(),
                      state: StepState.complete,
                    title: StepperTitle(text: "Ordered is ready at the restaurant",),

                  ),
                  Step(
                    content: Container(),
                    isActive: true,
                    state: StepState.complete,
                    title:StepperTitle(text: "Rider is picking up your order",color: ColorConstant.buttonColor,),

                  ),
                  Step(
                    content: Container(),
                    state: StepState.disabled,
                    title:StepperTitle(text: "Rider is nearBy your palace",color: Colors.grey,),

                  ),
                ],
              ),
            ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 250.0),
          child: Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[400],
            ),
            margin: EdgeInsets.only(left: 25, right: 25, top: 35, bottom: 35),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: ()
              {
               // Navigator.of(context).pop();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()),
                        (route) => false);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                width: double.infinity,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  "Cancel your order",
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}

class StepperTitle extends StatelessWidget {

  String text;
  dynamic color;
  StepperTitle({this.text, this.color = Colors.black});

  Responsive responsive = Responsive();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: responsive.getResponsiveValue(
          context: context,
          forLargeScreen: 40,
          forMediumScreen: 30,
          forShortScreen: 28),),
      child:  Text(
        text,
        style: GoogleFonts.lato(
            fontStyle: FontStyle.normal,
            color: color,
            fontSize: responsive.getResponsiveValue(
                context: context,
                forLargeScreen: 22,
                forMediumScreen: 20,
                forShortScreen: 18),
            fontWeight: FontWeight.w500),
      ), );
  }
}
