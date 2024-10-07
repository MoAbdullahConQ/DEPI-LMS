import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubTaskCard extends StatelessWidget {
  const SubTaskCard({super.key, required this.title, required this.date});

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
            '${AppRouter.kDetailsTasksStudentView}?taskName=Task14&startDate=20/8/2024&deadline=27/8/2024');
      },
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.only(bottom: 15, left: 18, right: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 17,
                height: 17,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              right: 7,
              bottom: 3,
              child: Text(
                date,
                style: TextStyle(color: kGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
