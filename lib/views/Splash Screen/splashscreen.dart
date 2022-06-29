import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors.dart';
import 'package:teleradiology/Constants/dimension.dart';
import 'package:get/get.dart';
import '../Sign In/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bg,
          body: Stack(
            children: [
              InkWell(
                onTap: () {
                  Get.to(SignInPage());
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: ScaleController.H * 0.046,
                            child: Image.asset(
                              "assets/Images/logo1.png",
                            )),
                        SizedBox(
                          width: ScaleController.W * 0.02,
                        ),
                        Container(
                            height: ScaleController.H * 0.046,
                            child: Image.asset("assets/Images/logo2.png")),
                        SizedBox(
                          width: ScaleController.W * 0.02,
                        ),
                        Container(
                            height: ScaleController.H * 0.046,
                            child: Image.asset("assets/Images/logo3.png")),
                        SizedBox(
                          width: ScaleController.W * 0.02,
                        ),
                        Container(
                            height: ScaleController.H * 0.046,
                            child: Image.asset("assets/Images/logo4.png")),
                      ],
                    ),
                    SizedBox(
                      height: ScaleController.H * 0.01,
                    ),
                    Container(
                        height: ScaleController.H * 0.08,
                        width: ScaleController.W * 0.4,
                        child: Image.asset(
                          "assets/Images/essential.png",
                          fit: BoxFit.fill,
                        )),
                    SizedBox(
                      height: ScaleController.H * 0.02,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
