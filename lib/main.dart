import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/service%20screen/Splash%20Screen/service_splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Service App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "NunitoSans"),
      home: ServiceSplashScreen(),
    );
  }
}
