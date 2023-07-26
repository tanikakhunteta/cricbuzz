import 'dart:developer';

import 'package:cricbuzz/data/network/base_api_services.dart';
import 'package:cricbuzz/model/match_model.dart';
import 'package:dio/dio.dart';



class NetworkApiServices{
  static Future <CircketScore?> getMatchScoreDetails ()async{
    Dio dio =Dio();
    try {
      Response response = await dio.get(BaseApiServices.upcomingMatch);
    
     print(response.data);
      if(response.statusCode==200){
       CircketScore matchScoreModel=CircketScore.fromJson(response.data);
     log(response.data);
        return matchScoreModel;
       
      }else {return null;}
      
    } catch (e) {log(e.toString());
      
    }
  }
}