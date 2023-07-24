import 'package:cricbuzz/model/player_search_model.dart';
import 'package:get/get.dart';

class PlayerSearchViewModel {
  List mainPlayerModel = [].obs;
  List tempPlayerModel = [].obs;
  void onSearch() {
    List players = [
      {
        "images": "assets/images/6362.jpg",
        "title": "Virat Kohli",
        "subtitle": "Captain"
      },
       {
        "images": "assets/images/6362.jpg",
        "title": "Rohit Sharma",
        "subtitle": "Vice Captain"
      },{
        "images": "assets/images/6362.jpg",
        "title": "Virat Kohli",
        "subtitle": "Captain"
      },
       {
        "images": "assets/images/6362.jpg",
        "title": "Rohit Sharma",
        "subtitle": "Vice Captain"
      },{
        "images": "assets/images/6362.jpg",
        "title": "Virat Kohli",
        "subtitle": "Captain"
      },
       {
        "images": "assets/images/6362.jpg",
        "title": "Rohit Sharma",
        "subtitle": "Vice Captain"
      },{
        "images": "assets/images/6362.jpg",
        "title": "Virat Kohli",
        "subtitle": "Captain"
      },
       {
        "images": "assets/images/6362.jpg",
        "title": "Rohit Sharma",
        "subtitle": "Vice Captain"
      }
    ];
    for(var element in players){
      PlayerSearchModel tempPlayerModel =PlayerSearchModel.fromJson(element);
      mainPlayerModel.add(tempPlayerModel);
    }
    tempPlayerModel=mainPlayerModel;
  }
  void onChange(value){
tempPlayerModel=[];
for(var element in mainPlayerModel){
  if(element.title!.toLowerCase().contains(value)){
    tempPlayerModel.add(element);
    
  }
}
  }
}
