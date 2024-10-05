import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Complaints extends StatelessWidget {
  const Complaints({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: CustomShadow(
        color: kWhite,
        borderRadius: BorderRadius.circular(16),
        edgeInsets: const EdgeInsets.symmetric(horizontal: 7),
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
                IconButton(onPressed: () {}, icon: const Icon(Icons.add))
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
    );
  }
}
