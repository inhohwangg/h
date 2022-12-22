import 'package:flutter/material.dart';
import 'package:test/landingpage.dart';
import 'package:test/mainpage.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      useMaterial3: true,
    ),
    home: LandingPage(),
  ));
}
