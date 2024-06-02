// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:firebase_e_commerc_app/Utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonComponent extends StatefulWidget {
  String title;
  ButtonComponent({super.key, required this.title});

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: Get.height * 0.09,
        width: double.infinity,
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: AppConstant.appTextsColor),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppConstant.appMainColor),
      ),
    );
  }
}
