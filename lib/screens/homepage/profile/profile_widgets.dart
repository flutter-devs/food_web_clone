import 'package:flutter/material.dart';
import 'package:food_web_clone/screens/homepage/location/location_view_model.dart';
import 'package:food_web_clone/screens/homepage/profile/address/address.dart';
import 'package:food_web_clone/screens/homepage/profile/contact_us/contactus.dart';
import 'package:food_web_clone/screens/homepage/profile/edit_profile/edit_profile.dart';
import 'package:food_web_clone/screens/homepage/profile/order_details/order_details.dart';
import 'package:food_web_clone/screens/homepage/profile/profile_view_model.dart';
import 'package:food_web_clone/screens/homepage/profile/settings/settings.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePhoto extends StatelessWidget {
//  double fontSizeOfText;
//  double itemHeight;
//  double sizeOfIcon;
  double marginTopItem;
//  double leftMarginFromText;
  double heightOfImage;
  double widthOfImage;


  ProfilePhoto({this.marginTopItem, this.heightOfImage, this.widthOfImage});

  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: marginTopItem),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200.0),
        child: Image.asset("assets/images/profile_pic.jpg",fit: BoxFit.cover
          ,height: heightOfImage,width:widthOfImage,),
      ),
    );
  }
}


class AccountInfoTile extends StatelessWidget {

  double itemHeight;
  double sizeOfIcon;
  double fontSizeOfText;
  double marginTopItem;
  double marginLeftOfFlag;
  double marginFromFlag;
  double heightOfFlag;
  double widthOfFlag;
  double marginRightFromFlag;


  AccountInfoTile({this.itemHeight, this.sizeOfIcon, this.fontSizeOfText,
    this.marginTopItem, this.heightOfFlag, this.widthOfFlag , this.marginFromFlag , this.marginLeftOfFlag ,this.marginRightFromFlag});

  ProfileViewModel _profileViewModel =  ProfileViewModel();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    LocationViewViewModel locationViewViewModel  = new LocationViewViewModel();
    return  ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context , index)=> InkWell(
          onTap: ()
          {
            _tapHandler(context: context ,index: index);
          },
          child: Card(
            child: Container(
              margin: EdgeInsets.only(top: marginTopItem),
              height: itemHeight,
//             width: size.width*.5,
//            alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  // image
                  Container(
                    margin: EdgeInsets.only(left: marginLeftOfFlag),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.asset(_profileViewModel.list[index].imagePath,fit: BoxFit.contain
                        ,height: heightOfFlag,width:widthOfFlag,),
                    ),
                  ),
// country name
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(_profileViewModel.list[index].text,style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal, color: Colors.black,fontSize: fontSizeOfText,fontWeight: FontWeight.bold),),
                  ),
                  Spacer(),
                  // icon
                  Container(
                    margin: EdgeInsets.only(right: marginRightFromFlag),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: sizeOfIcon,
                      color: Colors.grey,
                    ),
                  )


                ],
              ),
            ),
          ),
        ));
  }

  void _tapHandler({int index ,BuildContext context}) {
    switch(index) {
      case 0: {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfile()));
      }
      break;

      case 1: {

        Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetails()));
      }
      break;

      case 2: {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Address()));
      }
      break;

      case 3: {  Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings())); }
      break;
   case 4: {     Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactUs())); }
      break;

      default: { print("Invalid choice"); }
      break;
    }
  }
}
