// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:firebase_e_commerc_app/Utils/app_constant.dart';
import 'package:firebase_e_commerc_app/Widgets/TextFormField_Component.dart';
import 'package:firebase_e_commerc_app/Widgets/button_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email_Controler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appSecondryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'SignIn Screen',
          style: TextStyle(color: AppConstant.appTextsColor),
        ),
        centerTitle: true,
        backgroundColor: AppConstant.appMainColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            TextFormFieldComponent(
              controler: email_Controler,
              hint_text: 'Email',
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            TextFormFieldComponent(
              controler: email_Controler,
              hint_text: 'Password',
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: AppConstant.appTextsColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ButtonComponent(title: 'Sign In'),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
