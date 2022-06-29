import 'package:flutter/material.dart';
import 'package:teleradiology/Constants/colors.dart';
import 'package:get/get.dart';
import 'package:teleradiology/Constants/dimension.dart';
import 'package:teleradiology/views/Verify%20OTP/verify_otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  bool selectedItem = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: bg,
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: teleButtonBlue,
                )),
            elevation: 0,
            backgroundColor: bg,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: ScaleController.H * 0.15,
                  ),
                  Text(
                    "Password Recovery",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NunitoSans",
                        color: teleDarkBlue),
                  ),
                  Text(
                    "Enter your registered email address",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "NunitoSans",
                        color: telePurple2),
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.05,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: ScaleController.W * 0.05,
                        right: ScaleController.W * 0.05),
                    child: TextFormField(
                      cursorColor: teleGray,
                      controller: emailController,
                      decoration: InputDecoration(
                          prefixIcon: selectedItem
                              ? Icon(
                                  Icons.mail,
                                  color: teleGray,
                                )
                              : Icon(
                                  Icons.mail,
                                  color: teleBlack,
                                ),
                          hintText: "Email Address",
                          hintStyle: TextStyle(
                              fontSize: 13,
                              color: teleGray,
                              fontFamily: "NunitoSans"),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff184673)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)))),
                    ),
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(VerifyOTP());
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: ScaleController.W * 0.05,
                          right: ScaleController.W * 0.05),
                      child: Container(
                        height: ScaleController.H * 0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                            color: teleButtonBlue),
                        child: Center(
                            child: Text(
                          "Send OTP",
                          style: TextStyle(
                              fontFamily: "NunitoSans",
                              color: teleWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScaleController.H * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: 14,
                            color: telePurple2,
                            fontFamily: "NunitoSans"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
