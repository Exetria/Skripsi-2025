import 'dart:convert';

import 'package:android_app/main.dart';
import 'package:common_components/common_components.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void initializeLocalNotifications() {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/launcher_icon');

  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (NotificationResponse response) {
      final payload = response.payload;
      if (payload != null) {
        onNotificationTap(payload);
      }
    },
  );
}

void listenToForegroundFCM() {
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    final notification = message.notification;
    final android = message.notification?.android;

    if (notification != null && android != null) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'fcm_foreground_channel',
            'Foreground Notifications',
            channelDescription:
                'This channel is used for FCM foreground notifications.',
            importance: Importance.max,
            priority: Priority.high,
            playSound: true,
          ),
        ),
        payload: json.encode({
          'title': notification.title,
          'body': notification.body,
          'date': DateTime.now().toIso8601String(),
        }),
      );
    }
  });
}

void onNotificationTap(String payload) async {
  // Get notification data
  Map<String, dynamic> notificationData = json.decode(payload);
  String title = notificationData['title'] ?? '-';
  String body = notificationData['body'] ?? '-';
  final String creationDate = DateFormat(
    'd MMM yyyy',
  ).format(DateTime.parse(notificationData['date'] ?? ''));

  addCallBackAfterBuild(
    callback: () async {
      // Loop until context & login or timeout
      // Retry every 2 seconds
      for (int i = 0; i < 120; i++) {
        // Get page context
        final BuildContext? context = navigatorKey.currentContext;

        // If context exist and logged in, show dialog, else wait
        if (context != null && userDataHelper != null) {
          addCallBackAfterBuild(
            callback: () {
              showAnnouncementDetailsPopup(
                context: context,
                title: title,
                content: body,
                creationDate: creationDate,
              );
            },
          );
          break;
        }

        await Future.delayed(const Duration(milliseconds: 2000));
      }
    },
  );
}

Future<void> showAnnouncementDetailsPopup({
  required BuildContext context,
  required String title,
  required String content,
  required String creationDate,
}) async {
  showDialog(
    context: context,
    builder: (dialogContext) {
      return AlertDialog(
        title: Center(child: Text(title, style: subtitleStyle)),
        content: SizedBox(
          width: ScreenUtil().screenWidth * 0.4,
          child: SingleChildScrollView(child: Text(content, style: bodyStyle)),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(creationDate),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: () {
                  Navigator.pop(dialogContext);
                },
                child: const Text('Tutup'),
              ),
            ],
          ),
        ],
      );
    },
  );
}
