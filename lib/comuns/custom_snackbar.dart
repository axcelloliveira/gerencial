import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackBar(
    {required String title,
    required String message,
    required Color backgroundColor}) {
  Get.snackbar(title, message,
      colorText: Colors.white,
      backgroundColor: backgroundColor,
      snackPosition: SnackPosition.BOTTOM);
}
