import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        carPlay: true,
        criticalAlert: true,
        provisional: true,
        sound: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("user granted permission");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print("user granted provisional permission");
    } else {
      print("user denied permission");
    }
  }

  void firebaseInit() async {
    RemoteMessage? initialMessage = await messaging.getInitialMessage();
    print('inittal message : $initialMessage');
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print('onMessage: ${message.notification!.body}');
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {  print('b');});
  }

  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  void isTokenRefresh() {
    messaging.onTokenRefresh.listen((event) {
      event.toString();
    });
  }
}
