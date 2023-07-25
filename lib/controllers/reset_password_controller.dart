import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final isPassword = false.obs;
  final showPassword = false.obs;
  final isFocused = false.obs;

  void trySubmit() {
    Get.focusScope!.unfocus();
    // api call
  }
}