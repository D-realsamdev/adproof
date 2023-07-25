import 'package:adproof/widgets/app_styles.dart';
import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  final String text;
  const TextLabel({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: appStyles(14, Colors.black, FontWeight.w500),
        ));
  }
}