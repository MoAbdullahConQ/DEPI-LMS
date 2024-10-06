import 'package:depi_lms/Features/Authentication/presentation/views/widgets/login_view_body.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/curved_nav_bar.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/home_ministry_view_body.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/home_student_view_body.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class HomeMinistryView extends StatefulWidget {
  const HomeMinistryView({super.key});

  @override
  State<HomeMinistryView> createState() => _HomeStudentViewState();
}

class _HomeStudentViewState extends State<HomeMinistryView> {
  final List<dynamic> viewsList = const [
    LoginViewBody(),
    LoginViewBody(),
    HomeMinistryViewBody(),
    LoginViewBody(),
    HomeStudentViewBody(),
  ];

  int _currentIndex = 2; // Home is selected by default

  // Update the icons based on the current index
  List<Widget> itemsStudentList() {
    return [
      const Icon(Icons.format_list_bulleted,
          color: kGreenAccentColor, size: 30),
      const Icon(Icons.factory, color: kGreenAccentColor, size: 30),
      Icon(Icons.home_outlined,
          color: kGreenAccentColor,
          size: _currentIndex == 2 ? 50 : 35), // dynamic size for home icon
      const Icon(Icons.notification_add, color: kGreenAccentColor, size: 30),
      const Icon(Icons.settings, color: kGreenAccentColor, size: 30),
    ];
  }

  void onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: viewsList.elementAt(_currentIndex),
        ),
        bottomNavigationBar: CurvedNavBar(
          onTap: onTap,
          currentIndex: _currentIndex,
          itemsList: itemsStudentList(),
        ));
  }
}
