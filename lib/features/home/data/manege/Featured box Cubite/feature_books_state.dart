part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksFailler extends FeatureBooksState {
  final String errorMessage;

  const FeatureBooksFailler(this.errorMessage);
}

final class FeatureBooksSucces extends FeatureBooksState {
  final List<BookModel> books;

  const FeatureBooksSucces(this.books);
}
