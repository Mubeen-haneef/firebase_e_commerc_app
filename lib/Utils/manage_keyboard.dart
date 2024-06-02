// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class KayboardUtil {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode CurrentFocus = FocusScope.of(context);
    if (!CurrentFocus.hasPrimaryFocus) {
      CurrentFocus.unfocus();
    }
  }
}
