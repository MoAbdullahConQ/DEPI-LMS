import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/complaints.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/ministry_groups_tracking_system.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeMinistryViewBody extends StatelessWidget {
  const HomeMinistryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(height: 30),
                  Image.asset(
                    AssetsData.logo,
                    height: 200,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const MinistryGroupsTrackingSystem(),
              const SizedBox(height: 15),
              const Complaints(
                positioned: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
