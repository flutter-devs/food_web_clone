class ReviewViewModel
{
List<_ReviewModel> list = [
  _ReviewModel(name: "Kelly West" ,description: "I enjoyed the food of Restaurants. The dishes are very attractive and very Beautiful, Good food , luxuriours space nad inthuastic service. I will back in...",networkImagePath: "https://images.unsplash.com/photo-1594745561149-2211ca8c5d98?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
  _ReviewModel(name: "Json Mars" ,description: "I enjoyed the food of Restaurants. The dishes are very attractive and very Beautiful, Good food , luxuriours space nad inthuastic service. I will back in...",networkImagePath: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
];
}

class _ReviewModel
{
  String name;
  var description;
String networkImagePath;
  _ReviewModel({this.name, this.description ,this.networkImagePath});
}