import 'dart:developer';

import 'package:cricbuzz/data/network/base_api_services.dart';
import 'package:cricbuzz/model/match_model.dart';
import 'package:dio/dio.dart';

import '../../model/upcoming_match_model.dart';

class NetworkApiServices{
  static Future <MatchScoreModel?> getMatchScoreDetails ()async{
    Dio dio =Dio();
    try {
      Response response = await dio.get(BaseApiServices.upcomingMatch);
    
     
      if(response.statusCode==200){
        MatchScoreModel matchScoreModel=MatchScoreModel.fromJson(response.data);
     log(response.data);
        return matchScoreModel;
       
      }else {return null;}
      
    } catch (e) {log(e.toString());
      
    }
  }
}