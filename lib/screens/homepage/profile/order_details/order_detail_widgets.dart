import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_web_clone/const/color_const.dart';
import 'package:food_web_clone/screens/homepage/homepage_view_model.dart';
import 'package:food_web_clone/screens/homepage/profile/order_details/order_details_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailView extends StatelessWidget {
  double marginTopItem;
  double heightOfImage;
  double fontSizeOfImageText;
  double fontSizeOfButtonText;
  double fontSizeOfDishName;
  double marginBetweenInfoTile;
  double fontSizeOFTotalText;
  var widthOfImage;
  var alignment;
  double heightOFQuantityBox;
  double widthOfQuantityBox;

  OrderDetailView(
  {this.marginTopItem,
    this.heightOfImage,
    this.fontSizeOfImageText,
    this.fontSizeOfButtonText,
    this.fontSizeOfDishName,
    this.marginBetweenInfoTile,
    this.fontSizeOFTotalText,
  this.alignment = Alignment.center,
  this.widthOfImage,
  this.heightOFQuantityBox,
  this.widthOfQuantityBox});

  HomePageViewModel homePageViewModel = HomePageViewModel();
  OrderDetailViewModel orderDetailViewModel = OrderDetailViewModel();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
          itemCount: 3,
      itemBuilder: (context, index)=> Container(
        width: size.width,

        alignment: alignment,
        child: Container(
          width: widthOfImage,
         margin: EdgeInsets.only(top: marginTopItem),
          child: Column(
            children: <Widget>[
              // image
              Stack(
                children: <Widget>[
                  Image.asset(homePageViewModel.listOfMealsDeals[index],fit: BoxFit.cover
                    ,height: heightOfImage,width:size.width,),

                  Container(
                    height: heightOfImage,
                    alignment: Alignment.center,
                    width: size.width,
                    //color: Colors.transparent,
                    margin: EdgeInsets.only(left: 0),
                    child: Text("Mon July 20 2020 Order Placed",style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal, color: Colors.white,fontSize: fontSizeOfImageText,fontWeight: FontWeight.bold),),
                  )
                ],
              ),

             detailInfoTile(orderDetailViewModel.list[index].distquantity1 ,orderDetailViewModel.list[index].dishName1 ,orderDetailViewModel.list[index].dishPrice1 , index),
             detailInfoTile(orderDetailViewModel.list[index].distquantity2 ,orderDetailViewModel.list[index].dishName2 ,orderDetailViewModel.list[index].dishPrice2 , index),
             detailInfoTile(orderDetailViewModel.list[index].distquantity3 ,orderDetailViewModel.list[index].dishName3 ,orderDetailViewModel.list[index].dishPrice3 , index),
              SizedBox(height: 30.0,),
              Center(
                child: Container(
                  width: size.width*.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 0),
                        child: Text( "Total 27\$",style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal, color: Colors.black,fontSize: fontSizeOFTotalText,fontWeight: FontWeight.bold),),
                      ),
                      RaisedButton(

                      color: ColorConstant.buttonColor,
                      onPressed: ()
                      {

                      },
                      child:  Center(
                        child: Text( "Re-Ordered",style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal, color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
            ],
          ),
        ),
      )),
    );
  }

  detailInfoTile(String value, String t, String v, index) {
    return Container(
      width: widthOfImage,
      margin: EdgeInsets.only(top: marginBetweenInfoTile),
      child: Row(
        children: <Widget>[
          Container(
            height: heightOFQuantityBox,
            width: widthOfQuantityBox,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorConstant.buttonColor,
                  width: 1.0
                ),

              ),
              child: Center(
                child: Text(
                  value,
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: ColorConstant.buttonColor,
                    fontSize: fontSizeOfButtonText,
                  ),
                ),
              ),
            )
          ),

          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(t,style: GoogleFonts.lato(
                fontStyle: FontStyle.normal, color: ColorConstant.blackColor,fontSize: fontSizeOfDishName,fontWeight: FontWeight.w600),),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 0),
            child: Text("$v\$",style: GoogleFonts.lato(
                fontStyle: FontStyle.normal, color: ColorConstant.blackColor,fontSize: fontSizeOfDishName,fontWeight: FontWeight.w600),),
          ),

        ],
      ),
    );
  }
}
