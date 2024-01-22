import 'package:book_store/core/errors/failler.dart';
import 'package:book_store/features/home/domain/entities/home-entities.dart';
import 'package:dartz/dartz.dart';

// https://www.udemy.com/course/deep-dive-into-clean-architecture-in-flutter-2022arabic/learn/lecture/37322230#questions
class FeatchFeatureBooksUseCase extends UseCase<BookEntity>{
  @override
  Future<Either<Failure, BookEntity>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
  }


abstract class UseCase<Type> {
  Future<Either<Failure,Type>> call();
}
