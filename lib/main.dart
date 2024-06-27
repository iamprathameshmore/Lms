import 'package:flutter/material.dart';
import 'package:mkcl/home/HomeScreen.dart';
import 'package:mkcl/home/components/appbar_mkcl.dart';
import 'package:mkcl/splashscreen.dart';

import 'login/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mkcl Application',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
