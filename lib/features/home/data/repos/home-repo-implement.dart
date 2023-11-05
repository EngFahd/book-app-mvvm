import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/core/utils/api-services.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> featchFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=programming");

      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&sorting=newest&q=Engineering");

      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSemilerBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=programming");
      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}
