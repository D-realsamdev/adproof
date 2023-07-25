// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../shareds/utils/app_colors.dart';
import '../shareds/utils/border_radius.dart';
import 'app_styles.dart';

class StandardButtonOutline extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  final String image;
  const StandardButtonOutline(
      {super.key, required this.text, required this.onPressed, this.color, required this.image});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(btnBorderRadiusOutline)),
            side: const BorderSide(
              color:
                  Colors.grey, 
            ),
            backgroundColor: background,
            minimumSize: const Size(double.infinity, 70),
          ),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Image.asset(image),
              SizedBox(width: 70),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: appStyleWithMoreProps(14, label, FontWeight.w500, null),
                ),
              ),
            ],
          ),
        ));
  }
}

