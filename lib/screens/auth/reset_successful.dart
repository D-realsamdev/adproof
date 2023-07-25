// ignore_for_file: prefer_const_constructors
import 'package:adproof/screens/auth/login.dart';
import 'package:adproof/shareds/utils/app_colors.dart';
import 'package:adproof/shareds/utils/images.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:adproof/widgets/standard_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetSuccessfulScreen extends StatelessWidget {
  const ResetSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope!.unfocus(),
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 62),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 22),
                        Text(
                          'Password Reset \nSuccessful',
                          textAlign: TextAlign.center,
                          style: appStyles(
                            30,
                            label,
                            FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 92),
                        Image.asset(resetsuccess),
                        const SizedBox(height: 92),
                        Text(
                          'Welcome back to an Ad-Free Experience \nwith Adproof',
                          textAlign: TextAlign.center,
                          style: appStyles(
                            14,
                            Colors.grey,
                            FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  StandardButton(
                    text: 'Continue',
                    onPressed: () {
                        Get.to(() => LoginScreen()); 
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
