import 'package:cricbuzz/res/components/score_board.dart';
import 'package:flutter/material.dart';

import '../res/style/text_style.dart';

class CurrentScoreScreen extends StatefulWidget {
  const CurrentScoreScreen({super.key});

  @override
  State<CurrentScoreScreen> createState() => _CurrentScoreScreenState();
}

class _CurrentScoreScreenState extends State<CurrentScoreScreen> {
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
              child: Image.asset(
                "assets/images/6362.jpg",
                fit: BoxFit.cover,
              )),
          Column(
            children: [
              SizedBox(
                height: height / 40,
              ),
              Text(
                "CRICBUZZ",
                style: AppTextStyle.britannicbold18W(context),
              ),
              SizedBox(
                height: height / 40,
              ),
              ScoreBoardScreen()
            ],
          )
        ],
      )),
    );
  }
}