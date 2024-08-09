import 'package:flutter/material.dart';
import 'package:pinterest/pages/MongoDB/mongodb.dart';
import 'package:pinterest/pages/createaccount.dart';
import 'package:pinterest/pages/createpin.dart';
import 'package:pinterest/pages/home.dart';
import 'package:pinterest/pages/messages.dart';
import 'package:pinterest/pages/signup.dart';
import 'package:pinterest/pages/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //  widget root
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
        '/createpin': (context) => createPin(),
      },
    );
  }
}
