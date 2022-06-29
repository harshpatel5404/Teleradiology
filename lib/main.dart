import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleradiology/views/Splash%20Screen/splashscreen.dart';
import 'package:teleradiology/views/service_mainscreen.dart';
import 'views/order_summery.dart';
import 'views/service_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Service App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "NunitoSans"),
      home: ServiceMainScreen(
        curindex: 0,
      ),
    );
  }
}
