// import 'package:flutter/material.dart';
// import 'package:medical_care/services/local_notify_services.dart';
//
// import '../widget/default_button.dart';
// import 'alarm screen/alarm_screen.dart';
//
// class TestScreen extends StatefulWidget {
//   const TestScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }
//
// class _TestScreenState extends State<TestScreen> {
//   late final LocalNotifyService service;
//
//   @override
//   void initState() {
//     service = LocalNotifyService();
//     service.intialize();
//     ListenToNotification();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DefaultButton(
//               onPressed: () async {
//                 await service.showNotificationWithNav(
//                   id: 1,
//                   title: 'notify',
//                   body: 'There is a notification',
//                   payload: 'payload navigation',
//                 );
//               },
//               textWidget: Text('text'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   void ListenToNotification() => service.onNotificationClick.stream.listen(Nav);
//
//   void Nav(String? payload) {
//     if (payload != null && payload.isNotEmpty) {
//       print('payload $payload');
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => AlarmScreen(payload: payload)));
//     }
//   }
// }
