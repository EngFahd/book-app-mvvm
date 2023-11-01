import 'package:book_store/core/utils/api-services.dart';
import 'package:book_store/features/home/data/repos/home-repo-implement.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

void setup() {
  gitIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  gitIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(gitIt.get<ApiServices>()));
}
