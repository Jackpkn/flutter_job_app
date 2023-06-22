// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_bloc_state/src/common/widgets/app_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.levelText,
    required this.isPassword,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.keyboardType,
  }) : super(key: key);
  final String hintText;
  final String levelText;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      cursorHeight: 25,
      style: appStyle(
        fontSize: 14,
        color: Colors.grey,
        fw: FontWeight.w500,
      ),
      decoration: InputDecoration(
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        hintText: hintText,
        labelText: levelText,
        border: InputBorder.none,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 0.5,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            width: 0.5,
          ),
        ),
      ),
    );
  }
}
