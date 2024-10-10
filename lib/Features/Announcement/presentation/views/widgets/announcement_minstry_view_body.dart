import 'package:depi_lms/Features/Announcement/presentation/views/widgets/announcement_card_list_view.dart';
import 'package:depi_lms/Features/Announcement/presentation/views/widgets/announcement_card_list_view_item.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnnouncementMinstryViewBody extends StatelessWidget {
  const AnnouncementMinstryViewBody({super.key});

  final List<Widget> announcementCardList = const [
    AnnouncementCardListViewItem(
      to: 'Company',
      subject:
          'Hello Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      date: '6/10/2024',
      goRouterLink: AppRouter.kDetalisAnnouncementMinistryView,
    ),
    AnnouncementCardListViewItem(
        to: 'Students',
        subject:
            'Hello Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        goRouterLink: AppRouter.kDetalisAnnouncementMinistryView,
        date: '6/10/2024'),
    AnnouncementCardListViewItem(
        to: 'Students',
        subject:
            'Hello Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        goRouterLink: AppRouter.kDetalisAnnouncementMinistryView,
        date: '6/10/2024'),
    AnnouncementCardListViewItem(
        to: 'Company',
        subject:
            'Hello Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
        goRouterLink: AppRouter.kDetalisAnnouncementMinistryView,
        date: '6/10/2024')
  ];

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Announcement',
              edgeInsets: const EdgeInsets.only(top: 7, bottom: 7, left: 16),
              addCompany: true,
              onTap: () {
                GoRouter.of(context).push(AppRouter.kCreateAnnouncementView);
              },
            ),
            const SizedBox(height: 25),
            Expanded(
              child: AnnouncementCardListView(
                announcementCardList: announcementCardList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
