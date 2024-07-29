import 'package:flutter/material.dart';
import 'package:pinterest/pages/createaccount.dart';
import 'package:pinterest/pages/home.dart';
import 'package:pinterest/pages/messages.dart';
import 'package:pinterest/pages/signup.dart';
import 'package:pinterest/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/signup',
      routes: {
        '/home': (context) => Homepage(),
        '/signup': (context) => signup(),
        '/createaccount': (context) => createAccount(),
        '/profile': (context) => profile(),
        '/messages': (context) => messages(),
      },
    );
  }
}
