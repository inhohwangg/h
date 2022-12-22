import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:test/facilityMain.dart';
import 'package:test/homePage.dart';
import 'package:test/homePage.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController idTextController = TextEditingController();
  TextEditingController passWordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              LoginId(),
              LoginPassword(),
              LoginSubmit(),
            ],
          ),
        ),
      ),
    );
  }

  // Dio Example
  void getHttp() async {
    try {
      Dio().options.baseUrl = 'http://www.google.com';
      var response = await Dio().get('/');
      print(response);
      inspect(response);
    } catch (error) {
      print(error);
    }
  }
}

// 로고
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      // color: Colors.blue,
      // margin: EdgeInsets.all(30),
      child: Image.asset(
        'assets/img/android-chrome-512x512.png',
        fit: BoxFit.cover,
      ),
    );
  }
}

// 아이디 Input
class LoginId extends StatelessWidget {
  const LoginId({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      margin: EdgeInsets.all(20),
      child: Flexible(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            labelText: '아이디',
          ),
        ),
      ),
    );
  }
}

// 비밀번호 Input
class LoginPassword extends StatelessWidget {
  const LoginPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: Flexible(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            labelText: '비밀번호',
          ),
        ),
      ),
    );
  }
}

// 로그인 Button
class LoginSubmit extends StatelessWidget {
  const LoginSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return FacilityMain();
              },
            ),
          );
        },
        child: Text(
          '로그인',
        ),
      ),
    );
  }

  void getHttp2() async {
    try {
      var response =
          await Dio().get('http://118.37.153.245:8002/api/facilities');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
