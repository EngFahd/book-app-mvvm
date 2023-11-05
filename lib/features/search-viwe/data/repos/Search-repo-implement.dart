import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/core/utils/api-services.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/search-viwe/data/repos/SearhRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchViweRepoImplement implements SearchViweRepo {
  ApiService apiService;
  SearchViweRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> featchSearchBook(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=$category");

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
}
