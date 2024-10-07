// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'sub_task_card.dart';

class TaskCard extends StatefulWidget {
  final String title;
  final String assetImage;
  final List<SubTaskCard> subTasks;
  final VoidCallback onTap;

  TaskCard({
    required this.title,
    required this.assetImage,
    required this.subTasks,
    required this.onTap,
  });

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 7,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            onTap: widget.onTap,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  widget.assetImage,
                  width: 60,
                  height: 60,
                ),
                SizedBox(width: 15),
                VerticalDivider(
                  color: Colors.black54,
                  thickness: 1,
                  width: 9,
                  indent: 5,
                  endIndent: 5,
                ),
              ],
            ),
            title: Text(widget.title, style: Styles.text32StyleW400),
            trailing: IconButton(
              icon: Icon(isExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ),
          if (isExpanded)
            Column(
              children: widget.subTasks,
            ),
        ],
      ),
    );
  }
}
