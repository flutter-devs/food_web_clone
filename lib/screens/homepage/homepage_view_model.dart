class HomePageViewModel {
  List<String> listOfImages = [
    "assets/food/dish_1.jpg",
    "assets/food/burger.jpg",
    "assets/food/cafe.jpg",
    "assets/food/chinese.jpg",
    "assets/food/dish_2.jpg",
    "assets/food/icecream.jpg",
    "assets/food/sushi.jpg",
    "assets/food/wrap.jpg",
    "assets/food/dish_1.jpg",
    "assets/food/burger.jpg",
    "assets/food/cafe.jpg",
    "assets/food/chinese.jpg",
    "assets/food/dish_2.jpg",
    "assets/food/icecream.jpg",
    "assets/food/sushi.jpg",
    "assets/food/wrap.jpg",
  ];
  List<String> listOfMealsDeals = [
    "assets/food/wrap.jpg",
    "assets/food/dish_2.jpg",
    "assets/food/burger.jpg",

    "assets/food/chinese.jpg",
    "assets/food/dish_1.jpg",
    "assets/food/cafe.jpg",

    "assets/food/icecream.jpg",
    "assets/food/sushi.jpg",
    "assets/food/wrap.jpg",
    "assets/food/dish_1.jpg",
    "assets/food/burger.jpg",
    "assets/food/cafe.jpg",
    "assets/food/chinese.jpg",
    "assets/food/dish_2.jpg",
    "assets/food/icecream.jpg",
    "assets/food/sushi.jpg",

  ];

  List<String> listOfFavouriteFoodItems = [
    "Good Thai",
    "Sushi car",
    "Blacksmith Cafe",
    "Pizza Box",
  ];
  List<String> listOfFavouriteFoodItemsRating = [
    "4.9",
    "3.7",
    "4.2",
    "2.9",
  ];


  List<MostPopularDishModel> listOfMostPopularModel = [
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: " Street Fried Chicken, American"),
    MostPopularDishModel(
        dishName: "KFC Broadway", adress: "23 Queen Street Burntos, Greek"),
    MostPopularDishModel(
        dishName: "Greek House",
        adress: "122 Queen Street Fried Chicken, American"),
  ];
}

class MostPopularDishModel {
  String dishName;
  String adress;

  MostPopularDishModel({this.dishName, this.adress});
}
