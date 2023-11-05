part of 'book_detailes_cubit.dart';

sealed class BookDetailesCubitState extends Equatable {
  const BookDetailesCubitState();

  @override
  List<Object> get props => [];
}

final class BookDetailesCubitInitial extends BookDetailesCubitState {}

final class BookDetailesCubitLoading extends BookDetailesCubitState {}

final class BookDetailesFailler extends BookDetailesCubitState {
  final String errorMessage;

  const BookDetailesFailler(this.errorMessage);
}

final class BookDetailesCubitSuccess extends BookDetailesCubitState {
  final List<BookModel> books;

 const BookDetailesCubitSuccess(this.books);
}
