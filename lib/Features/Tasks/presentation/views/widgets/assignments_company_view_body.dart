import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/task_card.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AssignmentsCompanyViewBody extends StatelessWidget {
  const AssignmentsCompanyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        children: [
          AppBarListTile(
            title: 'Assignments',
            edgeInsets: const EdgeInsets.symmetric(vertical: 7),
            leading: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: kWhite,
                )),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TaskCard(
                  title: "Send Assignment",
                  assetImage: AssetsData.assignmentPic,
                  textStyle: Styles.text22StyleW600,
                  onTap: () {
                    GoRouter.of(context)
                        .push(AppRouter.kSendingTasksGroupTrackCompanyView);
                  },
                ),
                const SizedBox(height: 20),
                TaskCard(
                  title: "Receive Assignment",
                  assetImage: AssetsData.assignmentPic,
                  textStyle: Styles.text22StyleW600,
                  onTap: () {
                    GoRouter.of(context)
                        .push(AppRouter.kReceivedTasksGroupTrackCompanyView);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
