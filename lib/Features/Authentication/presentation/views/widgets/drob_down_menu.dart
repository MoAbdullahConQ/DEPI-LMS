import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  const DropDownMenu(
      {super.key,
      required this.width,
      required this.drobDownList,
      required this.hintText});

//  String m='';
  final int width;
  final String hintText;
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
        textStyle: Styles.textStyle18.copyWith(color: Colors.white),
        hintText: hintText,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          hintStyle: Styles.textStyle18.copyWith(color: Colors.white),
          fillColor: kButton,
          suffixIconColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          constraints: BoxConstraints.tight(const Size.fromHeight(55)),
          disabledBorder: InputBorder.none,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: BorderSide.none),
        ),
        width: width.toDouble(),
        dropdownMenuEntries: drobDownList,
      ),
    );
  }
}
