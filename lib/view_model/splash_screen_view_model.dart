
import 'package:cricbuzz/view/home_screen.dart';
import 'package:flutter/material.dart';



class SplashScreenViewModel {
  void onReady(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }
}
