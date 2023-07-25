// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, unused_local_variable
import 'package:adproof/widgets/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get.dart';
import '../shareds/utils/app_colors.dart';
import '../shareds/utils/border_radius.dart';

class TextInputForm extends StatelessWidget {
  final TextEditingController inputController;
  final String? textLabel;
  final String textHint;
  final String? textError;
  final String? validatorMessage;
  final bool isPassword;
  final bool autoCorrect;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool enabled; // Added the enabled field
  final List<TextInputFormatter>? inputFormatters;
  const TextInputForm({
    Key? key,
    required this.inputController,
    this.textLabel,
    required this.textHint,
    this.textError,
    this.validatorMessage,
    required this.isPassword,
    required this.autoCorrect,
    this.suffixIcon,
    this.inputType,
    this.enabledBorder,
    this.focusedBorder,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    required this.enabled,
    this.inputFormatters, // Added the enabled parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fillColor = enabled ? filled : filled;
    final borderColor = enabled ? filled : filled;

    return TextFormField(
      inputFormatters: inputFormatters,
      keyboardType: inputType,
      obscureText: isPassword,
      autocorrect: autoCorrect,
      controller: inputController,
      style: const TextStyle(fontSize: 15),
      enabled:
          enabled, 
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: textLabel,
        labelStyle: appStyles(15, null, null),
        hintText: textHint,
        hintStyle: appStyles(14, Colors.black, FontWeight.w500),
        errorText: textError,
        errorStyle: appStyles(null, validationErrorColor, null),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          borderSide: const BorderSide(color: filled),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          borderSide: const BorderSide(color: filled),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultBorderRadius),
          borderSide: BorderSide(color: filled),
        ),
        filled: true,
        fillColor: fillColor,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return validatorMessage;
        }
        return null;
      },
      onChanged: onChanged,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
