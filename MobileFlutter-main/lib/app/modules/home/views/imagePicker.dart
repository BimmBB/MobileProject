import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_1/app/modules/home/controllers/image_picker_controller.dart'; // Sesuaikan dengan path file kamu

class ImagePickerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ImagePickerController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Obx(() {
                return Container(
                  height: 500,
                  width: 500,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: controller.image.value.path == ''
                      ? Icon(
                          Icons.person,
                          size: 200,
                        )
                      : Image.file(controller.image.value),
                );
              }),
            ),
            ElevatedButton(
              onPressed: () {
                controller.imagePicker(fromCamera: false); // Pilih dari galeri
              },
              child: const Text('Select Images from Gallery',
                  style: TextStyle(fontSize: 30)),
            ),
            ElevatedButton(
              onPressed: () {
                controller.imagePicker(fromCamera: true); // Pilih dari kamera
              },
              child: const Text('Take Photo from Camera',
                  style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    );
  }
}
