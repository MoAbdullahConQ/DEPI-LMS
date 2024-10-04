import 'dart:ui';

import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.onTap,
      this.textStyle,
      this.icon,
      this.backgroundColor,
      required this.text});

  String text;
  TextStyle? textStyle;
  Color? backgroundColor;
  Icon? icon;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: backgroundColor,
            border: Border.all(color: Colors.white),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(0, 4), // Shadow position
              ),
            ],
          ),
          // child: Center(
          //     child: Text(
          //   text,
          //   style: textStyle,
          // )),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  style: textStyle,
                ),
                const SizedBox(width: 10),
                if (icon != null)
                  Icon(
                    icon!.icon,
                    color: Colors.white,
                  ),
              ],
            ),
          ),
        ));
  }
}
