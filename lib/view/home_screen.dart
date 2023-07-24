import 'package:cricbuzz/data/network/notification_services.dart';
import 'package:cricbuzz/view/current_score_screen.dart';
import 'package:cricbuzz/view/player_search_screen.dart';
import 'package:cricbuzz/view/upcoming_match_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';
import '../view_model/home_screen_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    notificationService.requestNotificationPermission();
    notificationService.getDeviceToken().then((value) {
      print("device token");
      print(value);
    });
    notificationService.isTokenRefresh();
    notificationService.firebaseInit();
    // TODO: implement initState
    super.initState();
  }

  NotificationService notificationService = NotificationService();
  HomeScreenViewModel homeScreenViewModel = Get.put(HomeScreenViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return AppUtils.bottomNavigationBar(
            homeScreenViewModel.selectedItem.value,
            homeScreenViewModel.selectedItem);
      }),
      body: Obx(() {
        return _buildPage(homeScreenViewModel.selectedItem.value);
      }),
    );
  }
}

Widget _buildPage(int index) {
  switch (index) {
    case 0:
      return CurrentScoreScreen();
    case 1:
      return UpcomingMatchScreen();
    case 2:
      return PlayerSearchScreen();

    default:
      return Container();
  }
}
