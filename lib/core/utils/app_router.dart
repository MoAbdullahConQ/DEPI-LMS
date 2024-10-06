import 'package:depi_lms/Features/Authentication/presentation/views/login_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_one_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_three_view.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/register_two_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_company_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_ministry_view.dart';
import 'package:depi_lms/Features/Splash/presentation/views/splash_view.dart';
import 'package:depi_lms/Features/Home/presentation/views/home_student_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kRegisterOneView = '/registerOneView';
  static const kRegisterTwoView = '/registerTwoView';
  static const kRegisterThreeView = '/registerThreeView';
  static const kHomeStudentView = '/homeStudentView';
  static const kHomeMinistryView = '/homeMinistryView';
  static const kHomeCompanyView = '/homeCompanyView';

  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kRegisterOneView,
        builder: (context, state) => const RegisterOneView(),
      ),
      GoRoute(
        path: kRegisterTwoView,
        builder: (context, state) => const RegisterTwoView(),
      ),
      GoRoute(
        path: kRegisterThreeView,
        builder: (context, state) => const RegisterThreeView(),
      ),
      GoRoute(
      path: kHomeStudentView,
        builder: (context, state) => const HomeStudentView(),
      ),
      GoRoute(
      path: kHomeMinistryView,
        builder: (context, state) => const HomeMinistryView(),
      ),
      GoRoute(
      path: kHomeCompanyView,
        builder: (context, state) => const HomeCompanyView(),
      ),
    ],
  );
}
