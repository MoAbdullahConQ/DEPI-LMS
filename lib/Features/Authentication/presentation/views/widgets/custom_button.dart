import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTap,
      this.textStyle,
      this.icon,
      this.backgroundColor,
      required this.text});

  final String text;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Icon? icon;
  final VoidCallback? onTap;

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
