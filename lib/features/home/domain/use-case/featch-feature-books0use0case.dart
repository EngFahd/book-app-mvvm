import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/domain/entities/home-entities.dart';
import 'package:book_store/features/home/domain/repo/home-repo.dart';
import 'package:dartz/dartz.dart';

class FeatchFeatureBooksUseCase {
  final HomeRepo homeRepo;

  FeatchFeatureBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> featchFeatureBooks() {

    return homeRepo.featchFeatureBooks();
  }
}
