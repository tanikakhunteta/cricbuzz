import 'package:flutter/material.dart';

import '../res/colors/app_colors.dart';
import '../view_model/splash_screen_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   SplashScreenViewModel splashScreenViewModel = SplashScreenViewModel();
  @override
  void initState() {
     splashScreenViewModel.onReady(context);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.blackColor,
        body: Center(
          child: Image.asset(
            "assets/images/cricbuzz (1).png",
            height: 230,
          ),
        ));
  }
}