
import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Failler,List<BookModel>>> featchBestSellerBooks();
 Future<Either<Failler,List<BookModel>>> featchFeatureBooks();
}
