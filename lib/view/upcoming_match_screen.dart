

import 'dart:developer';

import 'package:cricbuzz/data/network/network_api_services.dart';
import 'package:cricbuzz/model/match_model.dart';

import 'package:flutter/material.dart';

import '../res/colors/app_colors.dart';
import '../res/style/text_style.dart';

class UpcomingMatchScreen extends StatefulWidget {
  const UpcomingMatchScreen({super.key});

  @override
  State<UpcomingMatchScreen> createState() => _UpcomingMatchScreenState();
}

class _UpcomingMatchScreenState extends State<UpcomingMatchScreen> {
  @override
  void initState() {
    NetworkApiServices.getMatchScoreDetails().then((value) {
     log("$circketScore");
    });
    
   
    super.initState();
  }
  CircketScore? circketScore;

  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              image: DecorationImage(
                  image: AssetImage("assets/images/5205447.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      AppColors.whiteColor.withOpacity(0.60), BlendMode.dstATop)),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: height / 40,
              ),
              Center(
                child: Text(
                  "CRICBUZZ",
                  style: AppTextStyle.britannicbold18W(context),
                ),
              ),
              SizedBox(
                height: height / 40,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width / 20, vertical: height / 60),
                        child: Container(
                          height: height / 7.5,
                          width: width,
                          decoration: BoxDecoration(
                              color: AppColors.redColor.withOpacity(0.80)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height / 60),
                        child: Container(
                          height: height / 7.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "West Indies vs India, 2nd Test Match",
                                    style: AppTextStyle.monteserratregular18W(
                                        context),
                                  ),
                                  Text(
                                    "TEST | 07:30 pm",
                                    style: AppTextStyle.monteserratregular18W(
                                        context),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: width / 50),
                                child: Container(
                                  width: width,
                                  height: height / 13.5,
                                  decoration: BoxDecoration(
                                      color: AppColors.whiteColor,
                                      borderRadius:
                                          BorderRadius.circular(width / 12)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: width / 4,
                                        height: height / 13.5,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/india.png"),
                                                fit: BoxFit.cover),
                                            border: Border.all(
                                                width: 5,
                                                color: AppColors.whiteColor),
                                            color: AppColors.whiteColor,
                                            shape: BoxShape.circle),
                                      ),
                                      Text("IND",
                                          style:
                                              AppTextStyle.monteserratmedium18B(
                                                  context)),
                                      Text(
                                        "VS",
                                        style: AppTextStyle.monteserratbold18R(
                                            context),
                                      ),
                                      Text(
                                        "PAK",
                                        style: AppTextStyle.monteserratmedium18B(
                                            context),
                                      ),
                                      Container(
                                        width: width / 4,
                                        height: height / 13.5,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/pakistan.png"),
                                                fit: BoxFit.cover),
                                            border: Border.all(
                                                width: 5,
                                                color: AppColors.whiteColor),
                                            color: AppColors.whiteColor,
                                            shape: BoxShape.circle),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "India tour of West Indies, 2023, Queen's Park Oval",
                                style:
                                    AppTextStyle.monteserratregular18W(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          )
        ],
      )),
    );
  }
}