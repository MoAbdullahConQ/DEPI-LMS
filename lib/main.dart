import 'package:depi_lms/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DEPILMS());
}

class DEPILMS extends StatelessWidget {
  const DEPILMS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.routers,
    );
  }
}
