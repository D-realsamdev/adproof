// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:adproof/screens/auth/sso.dart';
import 'package:adproof/shareds/utils/app_colors.dart';
import 'package:adproof/shareds/utils/images.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        Future.delayed(Duration(seconds: 4), () {
      Get.to(SSOScreen());
    });
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Your logo image goes here
                    Image.asset(logo, width: 150, height: 150),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 46),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Designed by',
                        style: appStyles(12, Colors.grey, FontWeight.w500),
                      ),
                      const SizedBox(width: 4,),
                      Text(
                        'Peddle Technologies',
                        style: appStyles(12, label, FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
