import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/company_groups_tracking_system.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/complaints.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeCompanyViewBody extends StatelessWidget {
  const HomeCompanyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            const AppBarListTile(
              title: 'Welcome, AST',
              edgeInsets: EdgeInsets.symmetric(vertical: 9, horizontal: 3),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    Image.asset(
                      AssetsData.companyLogo,
                      height: 200,
                    ),
                    const CompanyGroupsTrackingSystem(),
                    const SizedBox(height: 15),
                    const Complaints(
                      positioned: true,
                    ),
                    const SizedBox(height: 25),
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
