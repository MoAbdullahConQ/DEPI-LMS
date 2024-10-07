import 'package:depi_lms/Features/Authentication/presentation/views/login_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_one_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_three_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_two_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_company_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_ministry_view.dart';
import 'package:depi_lms/Features/Splash/presentation/views/splash_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_student_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/attached_tasks_files_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/details_tasks_student_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/tasks_done_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/tasks_student_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kRegisterOneView = '/registerOneView';
  static const kRegisterTwoView = '/registerTwoView';
  static const kRegisterThreeView = '/registerThreeView';

  static const kHomeStudentView = '/homeStudentView';
  static const kHomeMinistryView = '/homeMinistryView';
  static const kHomeCompanyView = '/homeCompanyView';

  static const kTasksStudentView = '/tasksStudentView';
  static const kTasksDoneView = '/tasksDoneView';
  static const kDetailsTasksStudentView = '/detailsTasksStudentView';
  static const kAttachedTasksFilesView = '/attachedTasksFilesView';

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

      // GoRoute(
      // path: kHomeStudentView,
      //   builder: (context, state) => const HomeStudentView(),
      // ),
      // GoRoute(
      // path: kHomeMinistryView,
      //   builder: (context, state) => const HomeMinistryView(),
      // ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeCompanyView(),
      ),

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
    ],
  );
}
