// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adproof/screens/auth/login.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:adproof/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../controllers/otp_controller.dart';
import '../../shareds/utils/app_colors.dart';
import '../../widgets/standard_button.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({
    super.key,
  });
  final controller = Get.put(OtpController());

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
                    'OTP Verification',
                    textAlign: TextAlign.start,
                    style: appStyles(30, label, FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We sent a verification code to your email address hi@joinpeddle.com',
                    textAlign: TextAlign.start,
                    style: appStyles(14, Colors.grey, FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expires in 30 seconds :',
                        style: appStyles(14, Colors.grey, FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '01 : 16',
                        style: appStyles(14, anchor, FontWeight.w500),
                      )
                    ],
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 64,
                          decoration: BoxDecoration(
                            color:
                                filled, // Replace this with the desired background color
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: TextFormField(
                            controller: controller.codeOneController,
                            onChanged: (value) => value.length == 1
                                ? FocusScope.of(context).nextFocus()
                                : null,
                            decoration: InputDecoration(
                                fillColor: filled,
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: filled),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: filled),
                                    borderRadius: BorderRadius.circular(7))),
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 64,
                          decoration: BoxDecoration(
                            color:
                                filled, // Replace this with the desired background color
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: TextFormField(
                            controller: controller.codeTwoController,
                            onChanged: (value) => value.length == 1
                                ? FocusScope.of(context).nextFocus()
                                : null,
                            decoration: InputDecoration(
                                // hintText: '0',
                                fillColor: filled,
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: filled),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: filled),
                                    borderRadius: BorderRadius.circular(7))),
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 64,
                          decoration: BoxDecoration(
                            color:
                                filled, // Replace this with the desired background color
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: TextFormField(
                            controller: controller.codeThreeController,
                            onChanged: (value) => value.length == 1
                                ? FocusScope.of(context).nextFocus()
                                : null,
                            decoration: InputDecoration(
                                fillColor: filled,
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: filled),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: filled),
                                    borderRadius: BorderRadius.circular(7))),
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 64,
                          decoration: BoxDecoration(
                            color: filled,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: TextFormField(
                            controller: controller.codeFourController,
                            onChanged: (value) => value.length == 1
                                ? FocusScope.of(context).nextFocus()
                                : null,
                            decoration: InputDecoration(
                                fillColor: filled,
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: filled),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: filled),
                                    borderRadius: BorderRadius.circular(7))),
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    StandardButton(
                      text: 'Proceed',
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 08),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Didn\'t receive OTP?',
                        style: appStyles(14, Colors.grey, FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend code',
                          style: appStylesund(
                            14,
                            anchor,
                            FontWeight.w500,
                            TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Have a problem?',
                        style: appStyles(14, Colors.grey, FontWeight.w500),
                      ),
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
