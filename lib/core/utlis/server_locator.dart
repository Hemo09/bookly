import 'package:bookly/core/utlis/api_services.dart';
import 'package:bookly/features/home_page/data/repos/home_repo_implement.dart';
import 'package:bookly/features/search_view/data/repository/search_view_repo_implemnt.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(getIt.get<ApiServices>()));
  getIt.registerSingleton<SearchViewImplement>(
      SearchViewImplement(getIt.get<ApiServices>()));
}
