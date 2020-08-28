


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_web_clone/screens/homepage/location/location_view_model.dart';
import 'package:google_fonts/google_fonts.dart';

class FlagListTile extends StatelessWidget {

  double itemHeight;
  double sizeOfIcon;
  double fontSizeOfText;
  double marginTopItem;
  double marginLeftOfFlag;
  double marginFromFlag;
  double heightOfFlag;
  double widthOfFlag;
  double marginRightFromFlag;


  FlagListTile({this.itemHeight, this.sizeOfIcon, this.fontSizeOfText,
    this.marginTopItem, this.heightOfFlag, this.widthOfFlag , this.marginFromFlag , this.marginLeftOfFlag ,this.marginRightFromFlag});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    LocationViewViewModel locationViewViewModel  = new LocationViewViewModel();
    return  ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context , index)=> Card(
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
                    child: Image.network(locationViewViewModel.listOfLocationModel[index].flagImagePath,fit: BoxFit.cover
                      ,height: heightOfFlag,width:widthOfFlag,),
                  ),
                ),
// country name
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(locationViewViewModel.listOfLocationModel[index].countryName,style: GoogleFonts.lato(
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
        ));
  }
}



