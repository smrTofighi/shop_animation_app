import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_animation_app/bindings.dart';
import 'package:shop_animation_app/screens/home/home_screen.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
    enabled: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop Animation App',
      home: HomeScreen(),
      initialBinding: AppBinding(),
    );
  }
}
