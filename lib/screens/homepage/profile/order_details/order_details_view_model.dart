class OrderDetailViewModel
{
 List<_Model> list = [
   _Model(dishName1: "ChoclateFondant",dishName2: "Apple Tatain" ,dishName3: "Streak Frietes" ,dishPrice1: "12" ,dishPrice2: "10" ,dishPrice3: "5" ,distquantity1: "2" ,distquantity2: "3" ,distquantity3: "5"),
   _Model(dishName1: "Paneer Pasanda",dishName2: "Pizza" ,dishName3: "IceCream" ,dishPrice1: "7" ,dishPrice2: "10" ,dishPrice3: "10" ,distquantity1: "7" ,distquantity2: "2" ,distquantity3: "2"),
   _Model(dishName1: "Chicken ",dishName2: "Egg" ,dishName3: "Fish" ,dishPrice1: "12" ,dishPrice2: "9" ,dishPrice3: "8" ,distquantity1: "5" ,distquantity2: "2" ,distquantity3: "1"),
 ];
}

class _Model
{
  String dishName1;
  String dishName2;
  String dishName3;
  String dishPrice1;
  String dishPrice2;
  String dishPrice3;
  String distquantity1;
  String distquantity2;
  String distquantity3;

  _Model(
  {this.dishName1,
    this.dishName2,
    this.dishName3,
    this.dishPrice1,
    this.dishPrice2,
    this.dishPrice3,
    this.distquantity1,
    this.distquantity2,
    this.distquantity3});
}