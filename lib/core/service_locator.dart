
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../Features/home/data/repos/home_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(apiService: getIt.get<ApiService>()),
  );
  // getIt.registerSingleton<SearchRepoImpl>(
  //   SearchRepoImpl(apiService: getIt.get<ApiService>()),
  // );
}
