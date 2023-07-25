// ignore_for_file: prefer_const_constructors

import 'package:adproof/controllers/auth_controller.dart';
import 'package:adproof/screens/auth/forgot_password.dart';
import 'package:adproof/screens/auth/sign_up_screen.dart';
import 'package:adproof/shareds/utils/app_colors.dart';
import 'package:adproof/shareds/utils/images.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:adproof/widgets/custom_app_bar.dart';
import 'package:adproof/widgets/form_label_text.dart';
import 'package:adproof/widgets/standard_button.dart';
import 'package:adproof/widgets/text_form_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope!.unfocus(),
      child: Scaffold(
        backgroundColor: background,
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 42),
                Image.asset(logo),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 22),
                      Text(
                        'Login now to access super fasting \nstreaming.',
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
                const SizedBox(height: 70),
                LoginForm(),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: appStyles(
                        14,
                        Colors.grey,
                        FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const SignUpScreen());
                      },
                      child: Text(
                        'Sign Up',
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

class LoginForm extends StatelessWidget {
  final authController = Get.put(AuthController());

  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        // key: authController.formKey,
        child: Column(
          children: [
            TextLabel(
              text: "Email",
            ),
            const SizedBox(height: 16),
            TextInputForm(
              inputController: authController.emailController,
              textHint: 'hi@joinpeddle.com',
              validatorMessage: 'Please enter a valid email or phone number',
              isPassword: false,
              autoCorrect: false,
              enabled: true,
            ),
            const SizedBox(height: 16),
            TextLabel(
              text: "Password",
            ),
            const SizedBox(height: 16),
            TextInputForm(
              inputController: authController.passwordController,
              textHint: '*****************',
              validatorMessage: 'Please enter a valid password',
              isPassword: !authController.isPassword.value,
              autoCorrect: false,
              suffixIcon: IconButton(
                icon: authController.isPassword.value
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility),
                color: authController.isFocused.value
                    ? Colors.black
                    : Colors.black,
                onPressed: () {
                  authController.isPassword.value =
                      !authController.isPassword.value;
                },
              ),
              onTap: () => authController.isFocused.value = true,
              onChanged: (_) => authController.isFocused.value = false,
              onFieldSubmitted: (_) => authController.isFocused.value = false,
              enabled: true,
            ),
            const SizedBox(height: 03),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                  // Get.to(() => const HomeLandingTabScreen());
                },
                child: TextButton(
                  onPressed: () { Get.to(() => ForgotPasswordScreen()); },
                  child: Text(
                    'Forgot Password?',
                    style: appStyles(
                      14,
                      label,
                      FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            StandardButton(
              text: 'Login',
              onPressed: () {
                // login call
                if (authController.formKey.currentState!.validate()) {
                  authController.trySubmit();
                } else {}
              },
            ),
          ],
        ));
  }
}


