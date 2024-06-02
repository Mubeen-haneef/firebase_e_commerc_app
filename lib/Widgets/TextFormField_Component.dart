// ignore_for_file: must_be_immutable, non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:firebase_e_commerc_app/Utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormFieldComponent extends StatefulWidget {
  String hint_text;
  TextEditingController controler = TextEditingController();
  TextFormFieldComponent(
      {super.key, required this.hint_text, required this.controler});

  @override
  State<TextFormFieldComponent> createState() => _TextFormFieldComponentState();
}

class _TextFormFieldComponentState extends State<TextFormFieldComponent> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: AppConstant.appTextsColor,
      ),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
            vertical: Get.height * 0.032, horizontal: Get.width * 0.04),
        fillColor: AppConstant.appMainColor,
        hintText: widget.hint_text,
        hintStyle: TextStyle(color: AppConstant.appTextsColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppConstant.appSecondryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppConstant.appSecondryColor),
        ),
      ),
    );
  }
}
