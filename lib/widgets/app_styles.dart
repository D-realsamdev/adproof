import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appStyles(double? size, Color? color, FontWeight? fw) {
  return GoogleFonts.dmSans(fontSize: size, color: color, fontWeight: fw);
}

TextStyle appStylesund(double? size, Color? color, FontWeight? fw, TextDecoration? de) {
  return GoogleFonts.dmSans(fontSize: size, color: color, fontWeight: fw, decoration: de);
}


TextStyle appStyleWithMoreProps(
    double? size, Color? color, FontWeight? fw, Color? backgroundColor) {
  return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: fw,
      backgroundColor: backgroundColor);
}
