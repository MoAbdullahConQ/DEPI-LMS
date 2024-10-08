import 'package:depi_lms/Features/Tasks/presentation/views/widgets/select_student_tasks_group_track_company_view_body.dart';
import 'package:flutter/material.dart';

class SelectStudentTasksGroupTrackCompanyView extends StatelessWidget {
  const SelectStudentTasksGroupTrackCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SelectStudentTasksGroupTrackCompanyViewBody(),
      ),
    );
  }
}
