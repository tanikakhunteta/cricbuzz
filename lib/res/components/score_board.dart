import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../style/text_style.dart';

class ScoreBoardScreen extends StatefulWidget {
  const ScoreBoardScreen({super.key});

  @override
  State<ScoreBoardScreen> createState() => _ScoreBoardScreenState();
}

class _ScoreBoardScreenState extends State<ScoreBoardScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 30),
      child: Card(
        child: Container(
          height: height / 4.10,
          width: width,
          decoration: BoxDecoration(
              color: AppColors.redColor.withOpacity(0.85),
              borderRadius: BorderRadius.circular(height / 70)),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "England vs Australia, 4th Test Match",
                    style: AppTextStyle.monteserratregular18W(context),
                  ),
                  Center(
                    child: Card(
                      child: Container(
                          height: height / 5.9,
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(height / 70),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Text(
                                    "IND",
                                    style: AppTextStyle.monteserratmedium18B(
                                        context),
                                  )),
                                  Text(
                                    "299/8",
                                    style: AppTextStyle.monteserratbold18B(
                                        context),
                                  ),
                                  Text("Overs 83.0",
                                      style: AppTextStyle.monteserratregular18B(
                                          context)),
                                  Text("0/0 (0)",
                                      style: AppTextStyle.monteserratmedium19B(
                                          context))
                                ],
                              ),
                              Text(
                                "VS",
                                style: AppTextStyle.monteserratbold18R(context),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Text(
                                    "PAK",
                                    style: AppTextStyle.monteserratmedium18B(
                                        context),
                                  )),
                                  Text(
                                    "0/0",
                                    style: AppTextStyle.monteserratbold18B(
                                        context),
                                  ),
                                  Text("Overs 0.0",
                                      style: AppTextStyle.monteserratregular18B(
                                          context)),
                                  Text("0/0 (0)",
                                      style: AppTextStyle.monteserratmedium19B(
                                          context))
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                  Text(
                    "19-07-2023 03:30 pm, Emirates Old Trafford, Mancheste",
                    style: AppTextStyle.monteserratregular18W(context),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: width / 24.9),
                child: Container(
                  height: height / 12,
                  width: width / 8,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/india.png"),
                          fit: BoxFit.cover),
                      color: AppColors.redColor,
                      border: Border.all(color: AppColors.whiteColor),
                      shape: BoxShape.circle),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: width / 24.9),
                  child: Container(
                    height: height / 12,
                    width: width / 8,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/pakistan.png"),
                            fit: BoxFit.cover),
                        color: AppColors.redColor,
                        border: Border.all(color: AppColors.whiteColor),
                        shape: BoxShape.circle),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
