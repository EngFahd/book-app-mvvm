import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/core/utils/api-services.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplement(this.apiServices);
  @override
  Future<Either<Failler, List<BookModel>>> featchBestSellerBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailler.fromDioError(e));
      }
    return left(ServerFailler(e.toString()));
    }
  }

  @override
  Future<Either<Failler, List<BookModel>>> featchFeatureBooks() async{
        try {
      var data = await apiServices.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=subject:programming");
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailler.fromDioError(e));
      }
    return left(ServerFailler(e.toString()));
    }
  }
}
