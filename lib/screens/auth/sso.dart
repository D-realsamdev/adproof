// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:adproof/screens/auth/login.dart';
import 'package:adproof/screens/auth/sign_up_screen.dart';
import 'package:adproof/shareds/utils/app_colors.dart';
import 'package:adproof/shareds/utils/images.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:adproof/widgets/standard_outline_button_sso.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SSOScreen extends StatelessWidget {
  const SSOScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope!.unfocus(),
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 100),
                Image.asset(logo),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 22),
                      Text(
                        'Sign up now to regain control of the \ninternet from clutter and annoyances ads.',
                        textAlign: TextAlign.center,
                        style: appStyles(
                          16,
                          Colors.grey,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 200),
                SignUpType(),
                const SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account?',
                      style: appStyles(
                        14,
                        Colors.grey,
                        FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const LoginScreen());
                      },
                      child: Text(
                        'Sign in',
                        style: appStyles(
                          14,
                          Colors.black,
                          FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpType extends StatelessWidget {
  SignUpType({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        // key: authController.formKey,
        child: Column(
      children: [
        StandardButtonOutline(
          image: email,
          text: 'Sign up with Email',
          onPressed: () {
            Get.to(() => const SignUpScreen());
          },
        ),
        const SizedBox(height: 12),
        StandardButtonOutline(
          image: apple,
          text: 'Sign up with Apple',
          onPressed: () {},
        ),
        const SizedBox(height: 12),
        StandardButtonOutline(
          image: google,
          text: 'Sign up with Google',
          onPressed: () {},
        ),
      ],
    ));
  }
}
