import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_1/app/modules/home/loading/loading.dart';
import 'package:modul_1/app/modules/home/views/home_page.dart';

class LoginView extends StatelessWidget {
  final LandingPage controller =
      Get.put(LandingPage()); // Inisialisasi controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login View'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.off(LoadingScreen());
          },
          child: const Text('Login Sekali Tekan'),
        ),
      ),
    );
  }
}
