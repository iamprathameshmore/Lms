import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mkcl/screens/auth/LoginScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreeen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreeen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/png/mkcl.png',
              height: 150,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'Created by',
                  style: GoogleFonts.workSans(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'iamprathameshmore © 2024',
                  style: GoogleFonts.workSans(
                    color: Colors.grey,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
