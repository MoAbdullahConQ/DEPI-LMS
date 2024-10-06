import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  const DropDownMenu(
      {super.key,
      required this.width,
      required this.drobDownList,
      required this.hintText,
      required this.height,
      this.fillColor,
      this.suffixIconColor,
      this.hintStyle,
      this.border});

//  String m='';
  final int width;
  final double height;
  final String hintText;
  final Color? fillColor, suffixIconColor;
  final TextStyle? hintStyle;
  final InputBorder? border;
  final List<DropdownMenuEntry> drobDownList;

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      child: DropdownMenu(
        onSelected: (value) {
          if (value != null) {
            // setState(() {
            // m = value;
            // });
          }
        },
        textStyle: Styles.text18StyleW500.copyWith(color: Colors.white),
        hintText: hintText,
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            hintStyle:
                hintStyle, //Styles.text18StyleW500.copyWith(color: Colors.white),
            fillColor: fillColor,
            suffixIconColor: suffixIconColor, //Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            constraints: BoxConstraints.tight(Size.fromHeight(height)),
            // disabledBorder: InputBorder.none,
            border: border
            // OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(11),
            //     borderSide: BorderSide.none),
            ),
        width: width.toDouble(),
        dropdownMenuEntries: drobDownList,
      ),
    );
  }
}
