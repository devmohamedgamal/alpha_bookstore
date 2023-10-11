import 'package:alpha_bookstore/Features/Book_details/presentation/views/book_details_view.dart';
import 'package:alpha_bookstore/Features/auth/login/presentation/views/login_view.dart';
import 'package:alpha_bookstore/Features/auth/register/presentation/views/register_view.dart';
import 'package:alpha_bookstore/Features/home/data/models/book_model/book_model.dart';
import 'package:alpha_bookstore/Features/home/presentation/views/home_view.dart';
import 'package:alpha_bookstore/Features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetialsView = '/BookDetialsView';
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';

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
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetialsView,
        builder: (context, state) => BookDetailsView(bookModel: state.extra as BookModel,),
      ),
    ],
  );
}
