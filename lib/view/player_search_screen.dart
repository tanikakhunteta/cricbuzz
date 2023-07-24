import 'package:cricbuzz/res/colors/app_colors.dart';
import 'package:cricbuzz/utils/utils.dart';

import 'package:flutter/material.dart';

import '../res/style/text_style.dart';

class PlayerSearchScreen extends StatefulWidget {
  const PlayerSearchScreen({super.key});

  @override
  State<PlayerSearchScreen> createState() => _PlayerSearchScreenState();
}

class _PlayerSearchScreenState extends State<PlayerSearchScreen> {
  TextEditingController textFieldController = TextEditingController();
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
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/cricket-player-holding-leather-ball.jpg",
                      ),
                      colorFilter: ColorFilter.mode(
                          AppColors.whiteColor.withOpacity(0.70),
                          BlendMode.dstATop),
                      fit: BoxFit.cover)),
            ),
            Column(
              children: [
                SizedBox(
                  height: height / 20,
                ),
                Center(
                    child: Text(
                  "SEARCH",
                  style: AppTextStyle.britannicbold18B(context),
                )),
                SizedBox(
                  height: height / 20,
                ),
                AppUtils.textFormField(
                  context,
                  textFieldController: textFieldController,
                  hintText: "Search",
                ),SizedBox(height: height / 30),
                Expanded(
                  child: ListView(
                    
                    children: [Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          AppColors.whiteColor.withOpacity(0.90),
                          AppColors.whiteColor.withOpacity(0)
                        ]),
                        // color: AppColors.whiteColor.withOpacity(0.60),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(width / 15),
                            topRight: Radius.circular(width / 15))),
                    child: ListView(
                      physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        SizedBox(height: height / 40),
                        Padding(
                          padding: EdgeInsets.only(left: width / 30),
                          child: Text(
                            "Recent Search",
                            style:
                                AppTextStyle.monteserratSemiBold20B(context),
                          ),
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: height / 50,
                                  horizontal: width / 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: height / 15,
                                    width: width / 6,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            height / 100),
                                        color: AppColors.blackColor,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/6362.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    width: width / 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Virat Kohli",
                                        style:
                                            AppTextStyle.monteserratmedium18B(
                                                context),
                                      ),
                                      Text(
                                        "Captain",
                                        style: AppTextStyle
                                            .monteserratregular18B(context),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.more_vert,
                                    color: AppColors.blackColor,
                                  )
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ))
                      
                      // AppUtils.recentSearch(context),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
