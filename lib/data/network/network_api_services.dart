import 'dart:developer';

import 'package:cricbuzz/data/network/base_api_services.dart';
import 'package:cricbuzz/model/match_model.dart';
import 'package:dio/dio.dart';



class NetworkApiServices{
  static Future <CricketResponse?> getMatchScoreDetails ()async{
    Dio dio =Dio();
    try {
      Response response = await dio.get(BaseApiServices.upcomingMatch);
    
     print(response.data);
     print(response.statusCode);
      if(response.statusCode==200){
        CricketResponse matchScoreModel=CricketResponse.fromJson(response.data);

        return matchScoreModel;
       
      }else {return null;}
      
    } catch (e) {
      print("Hii");
      
    }
  }
}