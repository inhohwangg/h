import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/mainpage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Get.offAll(MainPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/android-chrome-512x512.png'),
            CircularProgressIndicator(
              color: Colors.black,
            ),
          ],
        ));
  }
}
