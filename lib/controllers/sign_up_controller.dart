import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final title = Rx<String>('Create account');
  final formKey = GlobalKey<FormState>();
  final dialogNavigatorKey = GlobalKey<NavigatorState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final isPassword = false.obs;
  final showPassword = false.obs;
  final isFocused = false.obs;
  
  void trySubmit() {
    Get.focusScope!.unfocus();
    // api call
  }



}
