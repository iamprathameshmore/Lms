import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mkcl/login/LoginScreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/mkcl.png',
              height: 150,
              width: 150,
              colorBlendMode: BlendMode.overlay,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 25),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Created by',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'iamprathameshmore © 2024',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )),
      ),
    );
  }
}
