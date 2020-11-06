import 'package:flutter/cupertino.dart';

class AddToCart  extends ChangeNotifier
{

  int _noOfItems =0;

  int get noOfItems => _noOfItems;

  set noOfItems(int value) {
    _noOfItems = value;
    notifyListeners();
  }
}