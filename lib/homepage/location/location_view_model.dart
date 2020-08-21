

class LocationViewViewModel
{
List<LocationModel> listOfLocationModel =[
  LocationModel(flagImagePath: "assets/images/afganistan.png",countryName: "Afganistan"),
  LocationModel(flagImagePath: "assets/images/albania.png",countryName: "Albania"),
  LocationModel(flagImagePath: "assets/images/algeria.png",countryName: "Algeria"),
  LocationModel(flagImagePath: "assets/images/argentina.png",countryName: "Argentina"),
  LocationModel(flagImagePath: "assets/images/australia.jpg",countryName: "Australia"),

];

}

class LocationModel
{
  String flagImagePath;
  String countryName;
  LocationModel({this.flagImagePath, this.countryName});
}