// ignore_for_file: prefer_const_constructors
import 'package:adproof/controllers/sign_up_controller.dart';
import 'package:adproof/screens/auth/login.dart';
import 'package:adproof/screens/auth/otp.dart';
import 'package:adproof/shareds/utils/app_colors.dart';
import 'package:adproof/shareds/utils/images.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:adproof/widgets/custom_app_bar.dart';
import 'package:adproof/widgets/standard_button.dart';
import 'package:adproof/widgets/text_form_input.dart';
import 'package:adproof/widgets/text_label.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                const SizedBox(height: 18),
                Image.asset(logo),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      'Register now to enjoy maximum security \nand advanced protection on the internet',
                      textAlign: TextAlign.center,
                      style: appStyles(
                        16,
                        Colors.black,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),
                SignUpForm(),
                const SizedBox(height: 18),
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

class SignUpForm extends StatelessWidget {
  final authController = Get.put(SignUpController());

  SignUpForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
        // key: authController.formKey,
        child: Column(
          children: [
             LabelTextSignup(
              textLabelSignup: "First name",
            ),
            const SizedBox(height: 16),
            TextInputForm(
              inputController: authController.firstNameController,
              textHint: 'Gladys ',
              validatorMessage: 'Please enter a valid email or phone number',
              isPassword: false,
              autoCorrect: false,
              enabled: true,
            ),
            const SizedBox(height: 16),
             LabelTextSignup(
              textLabelSignup: "Last name",
            ),
            const SizedBox(height: 16),
            TextInputForm(
              inputController: authController.lastNameController,
              textHint: 'Amidat',
              validatorMessage: 'Please enter a valid email or phone number',
              isPassword: false,
              autoCorrect: false,
              enabled: true,
            ),
            const SizedBox(height: 16),
            LabelTextSignup(
              textLabelSignup: "Email",
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
            LabelTextSignup(
              textLabelSignup: "Password",
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
            const SizedBox(height: 12),
            StandardButton(
              text: 'Sign Up',
              onPressed: () {
              Get.to(() => OtpScreen());
              },
            ),
          ],
        ));
  }
}


