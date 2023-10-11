import 'package:alpha_bookstore/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Features/home/data/repos/home_repo_impl.dart';
import 'Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'core/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const AlphaBookStore());
}

class AlphaBookStore extends StatelessWidget {
  const AlphaBookStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
            BlocProvider(
              create: (context) => FeaturedBooksCubit(
                getIt.get<HomeRepoImpl>(),
              )..fetchFeaturedBooks(),
            ),
            BlocProvider(
              create: (context) => NewestBooksCubit(
                getIt.get<HomeRepoImpl>(),
              )..fetchNewestBooks(),
            ),
          ],
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: AppRouter.router,
            ),
          );
        });
  }
}
