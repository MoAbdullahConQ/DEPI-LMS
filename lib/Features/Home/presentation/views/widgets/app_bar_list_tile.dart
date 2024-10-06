import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AppBarListTile extends StatelessWidget {
  const AppBarListTile({
    super.key,
    required this.title,
    this.subTitle,
    this.leading,
    this.edgeInsets,
  });

  final Widget? leading;
  final String? title, subTitle;
  final EdgeInsets? edgeInsets;

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      color: kGreenAccentColor,
      borderRadius: BorderRadius.circular(22),
      edgeInsets: edgeInsets,
      child: ListTile(
        leading: leading,
        title: Text(
          title!,
          style: Styles.textStyle25.copyWith(color: kWhite),
        ),
        subtitle: subTitle != null
            ? Text(
                subTitle!,
                style: Styles.textStyle25.copyWith(color: kWhite),
              )
            : null, // Render nothing if subTitle is null
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: kWhite,
              size: 40,
            )),
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(22),
        ),
        style: ListTileStyle.drawer,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        tileColor: kGreenAccentColor,
      ),
    );
  }
}
