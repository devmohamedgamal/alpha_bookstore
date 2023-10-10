import 'package:alpha_bookstore/Features/auth/login/presentation/views/login_view.dart';
import 'package:alpha_bookstore/Features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeViewPath = '/HomeView';
  static const kBookDetialsView = '/BookDetialsView';
  static const kLoginView = '/loginView';

  // static const kSearchView = '/kSearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
