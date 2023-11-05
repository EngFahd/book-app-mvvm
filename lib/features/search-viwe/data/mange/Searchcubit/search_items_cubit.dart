import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/search-viwe/data/repos/SearhRepo.dart';
import 'package:equatable/equatable.dart';

part 'search_items_state.dart';

class SearchItemsCubit extends Cubit<SearchItemsState> {
  SearchItemsCubit(this.searchViweRepo) : super(SearchItemsInitial());
    final SearchViweRepo searchViweRepo;

  Future<void> featchSearchBook({required String category}) async {
    emit(SearchItemsLoding());

    var response = await searchViweRepo.featchSearchBook(category: category);

    response.fold((failure) {
      emit(SearchItemsFailler(errorMessage: failure.errMessage));
    }, (books) {
      emit(SearchItemsSucces(books: books));
    });
  }

}
