part of 'search_items_cubit.dart';

sealed class SearchItemsState extends Equatable {
  const SearchItemsState();

  @override
  List<Object> get props => [];
}

final class SearchItemsInitial extends SearchItemsState {}

final class SearchItemsLoding extends SearchItemsState {}

final class SearchItemsFailler extends SearchItemsState {
  final String errorMessage;

  SearchItemsFailler({required this.errorMessage});
}

final class SearchItemsSucces extends SearchItemsState {
  final List<BookModel> books;

  SearchItemsSucces({required this.books});
}
