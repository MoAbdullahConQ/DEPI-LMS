import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/attendance_traking.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/complaints.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/date.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/student_tracking_system.dart';
import 'package:flutter/material.dart';

class HomeStudentViewBody extends StatelessWidget {
  const HomeStudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Hello',
              subTitle: 'Muhammed Ali',
              leading: GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/Profile Pic.png',
                    ),
                  ),
                ),
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    AttendanceTraking(),
                    SizedBox(height: 15),
                    Date(),
                    SizedBox(height: 15),
                    StudentTrackingSystem(),
                    SizedBox(height: 15),
                    Complaints(
                      iconData: Icons.add,
                      positioned: false,
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
