import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/colors/app_colors.dart';
import '../res/style/text_style.dart';

class AppUtils {
  static Widget bottomNavigationBar(int currentIndex, RxInt onTap) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: AppColors.redColor,
        unselectedItemColor: AppColors.blackColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.score), label: "Current Score"),
          BottomNavigationBarItem(
              icon: Icon(Icons.upcoming), label: "Upcoming Match"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Player Search")
        ]);
  }

  static Widget textFormField(BuildContext context,
      {required TextEditingController textFieldController, String? hintText, }) {
   
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 30),
      child: TextFormField(
       
        controller: textFieldController,
        style: AppTextStyle.monteserratmedium18W(context),
        cursorColor: AppColors.whiteColor,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.whiteColor,
            ),
            hintText: hintText,
            hintStyle: AppTextStyle.monteserratmedium18W(context),
            filled: true,
            fillColor: AppColors.redColor.withOpacity(0.60),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.redColor.withOpacity(0.60)),
                borderRadius: BorderRadius.circular(width / 50)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.redColor.withOpacity(0.60)))),
      ),
    );
  }
static  Widget recentSearch(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
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
                    ));
  }
}
