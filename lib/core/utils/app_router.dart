import 'package:depi_lms/Features/Authentication/presentation/views/login_view.dart';
import 'package:depi_lms/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

static const KLoginView='/loginView';

  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KLoginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
