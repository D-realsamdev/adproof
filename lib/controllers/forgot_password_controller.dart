import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController =
      TextEditingController();
  final isFocused = false.obs;

  void trySubmit() {
    Get.focusScope!.unfocus();
    // api call
  }
}