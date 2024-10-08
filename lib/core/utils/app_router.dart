import 'package:depi_lms/Features/Authentication/presentation/views/login_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_one_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_three_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_two_view.dart';
import 'package:depi_lms/Features/CompanyManagementMinistry/presentation/views/add_company_to_ministry_view.dart';
import 'package:depi_lms/Features/CompanyManagementMinistry/presentation/views/companies_ministry_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_company_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_ministry_view.dart';
import 'package:depi_lms/Features/Splash/presentation/views/splash_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_student_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/attached_tasks_files_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/details_tasks_student_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/received_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/review_details_student_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/review_student_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/select_student_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/sending_receiveing_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/sending_tasks_group_track_company_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/tasks_done_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/tasks_student_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kRegisterOneView = '/registerOneView';
  static const kRegisterTwoView = '/registerTwoView';
  static const kRegisterThreeView = '/registerThreeView';

//Home Feature
  static const kHomeStudentView = '/homeStudentView';
  static const kHomeMinistryView = '/homeMinistryView';
  static const kHomeCompanyView = '/homeCompanyView';

//Tasks Feature
  static const kTasksStudentView = '/tasksStudentView';
  static const kTasksDoneView = '/tasksDoneView';
  static const kDetailsTasksStudentView = '/detailsTasksStudentView';
  static const kAttachedTasksFilesView = '/attachedTasksFilesView';
  static const kSendingReceiveingTasksGroupTrackCompanyView =
      '/sendingReceiveingTasksGroupTrackCompanyView';
  static const kSendingTasksGroupTrackCompanyView =
      '/sendingTasksGroupTrackCompanyView';
  static const kSelectStudentTasksGroupTrackCompanyView =
      '/selectStudentTasksGroupTrackCompanyView';
  static const kReceivedTasksGroupTrackCompanyView =
      '/receivedTasksGroupTrackCompanyView';
  static const kReviewStudentTasksGroupTrackCompanyView =
      '/reviewStudentTasksGroupTrackCompanyView';
  static const kReviewDetailsStudentTasksGroupTrackCompanyView =
      '/reviewDetailsStudentTasksGroupTrackCompanyView';

//
  static const kCompaniesMinistryView = '/companiesMinistryView';

  static const kAddCompanyToMinistryView = '/addCompanyToMinistryView';

  static final routers = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) => const SplashView(),
      // ),
      // GoRoute(
      //   path: kLoginView,
      //   builder: (context, state) => const LoginView(),
      // ),
      // GoRoute(
      //   path: kRegisterOneView,
      //   builder: (context, state) => const RegisterOneView(),
      // ),
      // GoRoute(
      //   path: kRegisterTwoView,
      //   builder: (context, state) => const RegisterTwoView(),
      // ),
      // GoRoute(
      //   path: kRegisterThreeView,
      //   builder: (context, state) => const RegisterThreeView(),
      // ),

//Home Feature
      GoRoute(
        path: kHomeStudentView,
        builder: (context, state) => const HomeStudentView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeMinistryView(),
      ),
      GoRoute(
        path: kHomeCompanyView,
        builder: (context, state) => const HomeCompanyView(),
      ),

//Tasks Feature
      GoRoute(
        path: kTasksStudentView,
        builder: (context, state) => const TasksStudentView(),
      ),
      GoRoute(
          path: kTasksDoneView,
          builder: (context, state) {
            final itemCount = state.uri.queryParameters['itemCount'];
            final titleAppBar = state.uri.queryParameters['titleAppBar'];

            return TasksDoneView(
              itemCount: itemCount != null ? int.tryParse(itemCount) ?? 0 : 0,
              titleAppBar: titleAppBar ?? '',
            );
          }),
      GoRoute(
          path: kDetailsTasksStudentView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];
            final startDate = state.uri.queryParameters['startDate'];
            final deadline = state.uri.queryParameters['deadline'];

            return DetailsTasksStudentView(
              taskName: taskName ?? '',
              startDate: startDate ?? '',
              deadline: deadline ?? '',
            );
          }),
      GoRoute(
          path: kAttachedTasksFilesView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];

            return AttachedTasksFilesView(
              taskName: taskName ?? '',
            );
          }),
      GoRoute(
          path: kSendingReceiveingTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const SendingReceiveingTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kSendingTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const SendingTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kSelectStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const SelectStudentTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kReceivedTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const ReceivedTasksGroupTrackCompanyView();
          }),
      GoRoute(
          path: kReviewStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            final taskName = state.uri.queryParameters['taskName'];

            return ReviewStudentTasksGroupTrackCompanyView(
                taskName: taskName ?? '');
          }),
      GoRoute(
          path: kReviewDetailsStudentTasksGroupTrackCompanyView,
          builder: (context, state) {
            return const ReviewDetailsStudentTasksGroupTrackCompanyView();
          }),

//
      GoRoute(
          path: kCompaniesMinistryView,
          builder: (context, state) {
            return const CompaniesMinistryView();
          }),
      GoRoute(
          path: kAddCompanyToMinistryView,
          builder: (context, state) {
            return const AddCompanyToMinistryView();
          }),
    ],
  );
}
