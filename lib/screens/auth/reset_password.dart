// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:adproof/controllers/reset_password_controller.dart';
import 'package:adproof/screens/auth/reset_successful.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:adproof/widgets/custom_app_bar.dart';
import 'package:adproof/widgets/form_label_text.dart';
import 'package:adproof/widgets/text_form_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shareds/utils/app_colors.dart';
import '../../widgets/standard_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({
    super.key,
  });
  final resetPasswordController = Get.put(ResetPasswordController());

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
                    'Set new Password',
                    textAlign: TextAlign.start,
                    style: appStyles(30, label, FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your new password must be different to previously used passwords.',
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
                      text: "Password",
                    ),
                    const SizedBox(height: 16),
                    TextInputForm(
                      inputController:
                          resetPasswordController.passwordController,
                      textHint: '*****************',
                      validatorMessage: 'Please enter a valid password',
                      isPassword: !resetPasswordController.isPassword.value,
                      autoCorrect: false,
                      suffixIcon: IconButton(
                        icon: resetPasswordController.isPassword.value
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        color: resetPasswordController.isFocused.value
                            ? Colors.black
                            : Colors.black,
                        onPressed: () {
                          resetPasswordController.isPassword.value =
                              !resetPasswordController.isPassword.value;
                        },
                      ),
                      onTap: () =>
                          resetPasswordController.isFocused.value = true,
                      onChanged: (_) =>
                          resetPasswordController.isFocused.value = false,
                      onFieldSubmitted: (_) =>
                          resetPasswordController.isFocused.value = false,
                      enabled: true,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Must be at least 8 characters.",
                        textAlign: TextAlign.start,
                        style: appStyles(14, Colors.grey, FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextLabel(
                      text: "Confirm new password",
                    ),
                    const SizedBox(height: 16),
                    TextInputForm(
                      inputController:
                          resetPasswordController.confirmPasswordController,
                      textHint: '*****************',
                      validatorMessage: 'Please enter a valid password',
                      isPassword: !resetPasswordController.isPassword.value,
                      autoCorrect: false,
                      suffixIcon: IconButton(
                        icon: resetPasswordController.isPassword.value
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        color: resetPasswordController.isFocused.value
                            ? Colors.black
                            : Colors.black,
                        onPressed: () {
                          resetPasswordController.isPassword.value =
                              !resetPasswordController.isPassword.value;
                        },
                      ),
                      onTap: () =>
                          resetPasswordController.isFocused.value = true,
                      onChanged: (_) =>
                          resetPasswordController.isFocused.value = false,
                      onFieldSubmitted: (_) =>
                          resetPasswordController.isFocused.value = false,
                      enabled: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    StandardButton(
                      text: 'Reset password',
                      onPressed: () {
                          Get.to(() => ResetSuccessfulScreen()); 
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
