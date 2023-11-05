import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:equatable/equatable.dart';

part 'book_detailes_cubit_state.dart';

class BookDetailesCubit extends Cubit<BookDetailesCubitState> {
  BookDetailesCubit(this.homeRepo) : super(BookDetailesCubitInitial());
  final HomeRepo homeRepo;
  
  Future<void> featchBestSellerBooks({required String category}) async {
    emit(BookDetailesCubitLoading());
    var result = await homeRepo.fetchSemilerBooks(category: category);
    result.fold((failuer) {
      emit(BookDetailesFailler(failuer.errMessage));
    }, (books) {
      emit(BookDetailesCubitSuccess(books));
    });
  }
}
