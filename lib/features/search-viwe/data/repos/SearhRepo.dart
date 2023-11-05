
import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class SearchViweRepo {
  Future<Either<Failure, List<BookModel>>> featchSearchBook({required String category});
  
}
