import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.prefixIcon,
      this.suffixIcon,
      required this.onChanged,
      this.hintText,
      this.hintStyle,
      this.obscure = false});

  String? hintText;
  TextStyle? hintStyle;

  Function(String)? onChanged;

  bool? obscure;

  Icon? prefixIcon, suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(9),
      color: const Color(0xffECEFF1),
      elevation: 7.0,
      shadowColor: Colors.grey,
      child: TextFormField(
        obscureText: obscure!,
        onChanged: onChanged,
        style: const TextStyle(
            color: kLogin, fontSize: 18, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: hintStyle,
          fillColor: const Color(0xffECEFF1),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(color: Color(0xffECEFF1)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(color: Color(0xffECEFF1)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(color: Color(0xffECEFF1)),
          ),
        ),
      ),
    );
  }
}
