// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:rxdart/rxdart.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/tzdata.dart' as tz;
//
// class LocalNotifyService {
//   LocalNotifyService();
//
//   final _localNotificationService = FlutterLocalNotificationsPlugin();
//   final BehaviorSubject<String?> onNotificationClick = BehaviorSubject();
//
//   Future<void> intialize() async {
//     const AndroidInitializationSettings androidInitializationSettings =
//         AndroidInitializationSettings('@drawable/ic_stat_alarm_on');
//     IOSInitializationSettings iosInitializationSettings =
//         IOSInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: true,
//       requestSoundPermission: true,
//       onDidReceiveLocalNotification: onDidReceiveLocalNotification,
//     );
//
//     final InitializationSettings settings = InitializationSettings(
//         android: androidInitializationSettings, iOS: iosInitializationSettings);
//
//     await _localNotificationService.initialize(
//       settings,
//       onSelectNotification: onSelectNotification,
//     );
//   }
//
//   Future<NotificationDetails> _notificationDetails() async {
//     const AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails(
//       'Channel_id',
//       'Channel_Name',
//       channelDescription: 'Description',
//       priority: Priority.max,
//       playSound: true,
//       importance: Importance.max,
//     );
//     const IOSNotificationDetails iosNotificationDetails =
//         IOSNotificationDetails();
//     return const NotificationDetails(
//         android: androidNotificationDetails, iOS: iosNotificationDetails);
//   }
//
//   Future<void> showNotificationWithNav({
//     required int id,
//     required String title,
//     required String body,
//     required String payload,
//   }) async {
//     final details = await _notificationDetails();
//     await _localNotificationService.show(id, title, body, details,
//         payload: payload);
//   }
//
//   void onDidReceiveLocalNotification(
//       int id, String? title, String? body, String? payload) {
//     print('id $id');
//   }
//
//   void onSelectNotification(String? payload) {
//     print('payload $payload');
//     if (payload != null && payload.isNotEmpty) {
//       onNotificationClick.add(payload);
//     }
//   }
// }
