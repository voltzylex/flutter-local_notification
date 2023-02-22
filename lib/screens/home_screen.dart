import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:local_notification/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  void showNotification() async {
    AndroidNotificationDetails androidDetails = const AndroidNotificationDetails(
        "Notification-Youtube", "YoutubeNotification",
        priority: Priority.max, importance: Importance.max);
    DarwinNotificationDetails iosDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    NotificationDetails notyDetails =
        NotificationDetails(android: androidDetails, iOS: iosDetails);
    await notificationPlugin.show(
        0, "Rohit Sir", "Saquib sir is learning riverpod", notyDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showNotification();
        },
        child: const Icon(Icons.notification_add),
      ),
      appBar: AppBar(),
      body: SafeArea(child: Container()),
    );
  }
}
