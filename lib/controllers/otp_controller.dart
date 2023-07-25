
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final title = Rx<String>('Account Verification');
  TextEditingController codeOneController = TextEditingController();
  TextEditingController codeTwoController = TextEditingController();
  TextEditingController codeThreeController = TextEditingController();
  TextEditingController codeFourController = TextEditingController();


  // @override
  // void onInit() {
  //    Get.focusScope!.unfocus();
  // }
}
