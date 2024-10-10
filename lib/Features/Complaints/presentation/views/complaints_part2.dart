// // ignore_for_file: prefer_const_constructors

// import 'package:complains_ministry/screens/complaints_part1.dart';
// import 'package:complains_ministry/widget/appbar.dart';
// import 'package:complains_ministry/widget/body_widget.dart';
// import 'package:complains_ministry/widget/user_info.dart';
// import 'package:flutter/material.dart';

// class ComplaintsPart2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         title: "Complaints & Suggestions",
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => ComplaintsPage()),
//           );
//         },
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               UserInfoWidget(),
//               SizedBox(height: 16),
//               BodyWidget(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
