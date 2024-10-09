import 'package:depi_lms/Features/Tasks/presentation/views/widgets/assignments_company_view_body.dart';
import 'package:flutter/material.dart';

class AssignmentsCompanyView extends StatelessWidget {
  const AssignmentsCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AssignmentsCompanyViewBody()),
    );
  }
}
