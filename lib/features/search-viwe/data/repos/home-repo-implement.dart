import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/search-viwe/data/repos/home-repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoInplment extends HomeRepo{
  @override
  Future<Either<Failler, BookModel>> featchBestSellerBooks() {
    // TODO: implement featchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failler, BookModel>> featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }

}