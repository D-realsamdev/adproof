// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:adproof/controllers/forgot_password_controller.dart';
import 'package:adproof/screens/auth/reset_password.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:adproof/widgets/custom_app_bar.dart';
import 'package:adproof/widgets/form_label_text.dart';
import 'package:adproof/widgets/text_form_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shareds/utils/app_colors.dart';
import '../../widgets/standard_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({
    super.key,
  });
  final forgotPasswordController = Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // appLogo(200, 200),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seems you lost \nyour key 😭',
                    textAlign: TextAlign.start,
                    style: appStyles(30, label, FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your email address to receive a password reset link.',
                    textAlign: TextAlign.start,
                    style: appStyles(14, Colors.grey, FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Form(
                // key: controller.formKey,
                child: Column(
                  children: [
                    TextLabel(
                      text: "Email",
                    ),
                    const SizedBox(height: 16),
                    TextInputForm(
                      inputController:
                          forgotPasswordController.emailController,
                      textHint: 'hi@joinpeddle.com',
                      validatorMessage:
                          'Please enter a valid email or phone number',
                      isPassword: false,
                      autoCorrect: false,
                      enabled: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    StandardButton(
                      text: 'Send code',
                      onPressed: () {
                         Get.to(() => ResetPasswordScreen()); 
                      },
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Have a problem?', style: appStyles(14, Colors.grey, FontWeight.w500)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Contact us',
                          style: appStyles(14, label, FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
