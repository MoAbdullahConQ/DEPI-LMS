import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.onChanged,
    this.labelStyle,
    required this.labelText,
    this.obscure = false,
  });

  // String? hintText;
  TextStyle? labelStyle;
  String? labelText;

  Function(String)? onChanged;

  bool? obscure;

  Icon? prefixIcon, suffixIcon;

  @override
  Widget build(BuildContext context) {
    // Material(
    // borderRadius: BorderRadius.circular(9),
    // color: const Color(0xffECEFF1),
    // elevation: 7.0,
    // shadowColor: Colors.grey,
    // child:
    return CustomShadow(
      child: TextFormField(
        obscureText: obscure!,
        onChanged: onChanged,
        style: const TextStyle(
            color: kGreen1Color, fontSize: 18, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          // hintText: hintText,
          // hintStyle: hintStyle,
          labelText: labelText,
          labelStyle: labelStyle,
          filled: true,
          fillColor: const Color(0xffECEFF1),
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
