import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTap,
      this.textStyle,
      this.backgroundColor,
      required this.text,
      this.borderRadius,
      this.border,
      this.leading,
      this.treling});

  final String text;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final IconData? leading, treling;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: backgroundColor,
            border: border,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                offset: Offset(0, 3), // Shadow position
              ),
            ],
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (leading != null)
                  Icon(
                    leading,
                    color: Colors.black,
                  ),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: textStyle,
                ),
                const SizedBox(width: 10),
                if (treling != null)
                  Icon(
                    treling,
                    color: Colors.white,
                  ),
              ],
            ),
          ),
        ));
  }
}
