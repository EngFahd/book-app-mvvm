import 'package:book_store/core/utils/api-services.dart';
import 'package:book_store/features/home/data/repos/home-repo-implement.dart';
import 'package:book_store/features/search-viwe/data/repos/Search-repo-implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt gitIt = GetIt.instance;

void setup() {
  gitIt.registerSingleton<ApiService>(ApiService(Dio()));
  gitIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(gitIt<ApiService>()));
  gitIt.registerSingleton<SearchViweRepoImplement>(SearchViweRepoImplement(gitIt<ApiService>()));
}
