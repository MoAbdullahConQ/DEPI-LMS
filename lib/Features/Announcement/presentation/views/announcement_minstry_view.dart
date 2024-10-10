import 'package:depi_lms/Features/Announcement/presentation/views/widgets/announcement_minstry_view_body.dart';
import 'package:flutter/material.dart';

class AnnouncementMinstryView extends StatelessWidget {
  const AnnouncementMinstryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AnnouncementMinstryViewBody(),
      ),
    );
  }
}
