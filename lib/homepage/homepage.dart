import 'package:flutter/material.dart';
import 'package:food_web_clone/homepage/favourite/favourite.dart';
import 'package:food_web_clone/homepage/homeview.dart';
import 'package:food_web_clone/homepage/location/location.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyItem(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
            title: Text(''),
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(''),
          ),*/
        ],
        currentIndex: _selectedIndex,
          unselectedIconTheme: IconThemeData(
            color: Colors.grey
          ),
        selectedItemColor: Color(0xffEB5A6C),
        onTap: _onItemTapped,
      ),
    );
  }

  bodyItem(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        {
//          return ConstrainedBox(
//              constraints: BoxConstraints(minHeight: 250 ),
//              child: );
        return HomeView();
        }
        break;

      case 1:
        {
          return Location();
        }
        break;

      case 2:
        {
           return Favourite();
        }
        break;

      /*case 3:
        {
          print("Poor");
        }
        break;*/

    }
  }
}