import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:modul_1/app/modules/home/views/home_page.dart';

class LoadingScreen extends StatefulWidget {
  @override
  Loading createState() => Loading();
}

class Loading extends State<LoadingScreen> {
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Get.off(LandingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Q.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(),
        ],
      ),
    ));
  }
}
