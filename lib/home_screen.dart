// import 'dart:convert';

// import 'package:firebase_notification/notification_services.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   NotificationServices notificationServices = NotificationServices();

//   @override
//   void initState() {
//     super.initState();
//     notificationServices.requestNotificationPermission();
//     notificationServices.firebaseInit(context);
//     notificationServices.forgroundMessage();
//     notificationServices.setupInteractMessage(context);
//     notificationServices.isTokenRefresh();
//     notificationServices
//         .getDeviceToken()
//         .then((value) => {print("Device Token: $value")});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: TextButton(
//               onPressed: () {
//                 notificationServices.getDeviceToken().then((value) async {
//                   var data = {
//                     'to': value.toString(),
//                     'priority': 'high',
//                     'notification': {
//                       'title': 'Vishwas',
//                       'body': 'Testing through text button'
//                     },
//                     'data': {'type': 'msg', 'id': '646456'}
//                   };
//                   await http.post(
//                       Uri.parse('https://fcm.googleapis.com/fcm/send'),
//                       headers: {
//                         'Content-Type': 'application/json;charset=UTF-8',
//                         'Authorization':
//                             'key=YOUR-APIKEY'
//                       },
//                       body: jsonEncode(data));
//                 });
//               },
//               child: const Text('Send Notification'))),
//     );
//   }
// }
