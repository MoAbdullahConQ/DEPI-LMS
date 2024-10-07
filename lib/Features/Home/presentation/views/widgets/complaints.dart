import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Complaints extends StatelessWidget {
  const Complaints({super.key, this.iconData, required this.positioned});

  final IconData? iconData;
  final bool positioned;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(children: [
        CustomShadow(
          color: kWhite,
          borderRadius: BorderRadius.circular(16),
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Complaints',
                    style: Styles.textStyle25.copyWith(color: kText),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(iconData))
                ],
              ),
              Row(
                children: [
                  Text(
                    'To: ',
                    style: Styles.text22StyleW600,
                  ),
                  Text(
                    'Ministry',
                    style: Styles.text18StyleW600.copyWith(color: kText),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Body: ',
                    style: Styles.text22StyleW600,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 7),
                    child: SizedBox(
                      width: 290,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lobortis, justo vel interdum luctus, felis nibh accumsan sem, quis gra',
                        style: Styles.text18StyleW500.copyWith(color: kText),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: positioned == true ? Colors.blue : Colors.transparent),
          ),
        )
      ]),
    );
  }
}
