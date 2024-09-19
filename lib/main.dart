import 'package:depi_lms/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DEPILMS());
}

class DEPILMS extends StatelessWidget {
  const DEPILMS({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
