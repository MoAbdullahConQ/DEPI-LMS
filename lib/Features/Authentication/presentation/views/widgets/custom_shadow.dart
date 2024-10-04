import 'package:flutter/material.dart';

class CustomShadow extends StatelessWidget {
  const CustomShadow({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffBAC1BE),
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: child,
    );
  }
}
