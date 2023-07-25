
import 'package:adproof/shareds/utils/app_colors.dart';
import 'package:adproof/widgets/app_styles.dart';
import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String textLabel;
  const LabelText({
    super.key,
    required this.textLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Align
    (
      alignment: Alignment.topLeft,
      child: Text(
          textLabel,
          style: appStyles(
            16,
            label,
            FontWeight.w500,
          ),
        ),
    );
  }
}


class LabelTextSignup extends StatelessWidget {
  final String textLabelSignup;
  const LabelTextSignup({
    super.key,
    required this.textLabelSignup,
  });

  @override
  Widget build(BuildContext context) {
    return Align
    (
      alignment: Alignment.topLeft,
      child: Text(
          textLabelSignup,
          style: appStyles(
            16,
            Colors.grey,
            FontWeight.w500,
          ),
        ),
    );
  }
}
