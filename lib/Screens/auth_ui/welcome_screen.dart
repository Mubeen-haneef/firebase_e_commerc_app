// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:firebase_e_commerc_app/Screens/auth_ui/sign_in_screen.dart';
import 'package:firebase_e_commerc_app/Utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appSecondryColor,
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondryColor,
        title: Text(
          'Welcome to ${AppConstant.appMainName}',
          style: TextStyle(
            color: AppConstant.appTextsColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: Get.height * 0.5,
              width: Get.width,
              child: Lottie.asset('assets/images/splash.json'),
            ),
            Container(
              margin: EdgeInsets.only(
                top: Get.height * 0.02,
              ),
              child: Text(
                'Happy Shoping',
                style: TextStyle(
                    color: AppConstant.appTextsColor,
                    fontSize: Get.height * 0.03,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            //continue with google button
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                    color: AppConstant.appMainColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton.icon(
                  label: Text(
                    'Continue with google',
                    style: TextStyle(
                        color: AppConstant.appTextsColor,
                        fontWeight: FontWeight.bold),
                  ),
                  // color: AppConstant.appMainColor,
                  onPressed: () {},
                  icon: Image(
                    image: AssetImage('assets/images/google.png'),
                    height: Get.height * 0.046,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.04,
            ),
            //continue with email button
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                    color: AppConstant.appMainColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton.icon(
                    label: Text(
                      'Continue with Email',
                      style: TextStyle(
                          color: AppConstant.appTextsColor,
                          fontWeight: FontWeight.bold),
                    ),
                    // color: AppConstant.appMainColor,
                    onPressed: () {
                      Get.to(() => SignInScreen());
                    },
                    icon: Icon(
                      Icons.mail_lock_rounded,
                      color: AppConstant.appTextsColor,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
