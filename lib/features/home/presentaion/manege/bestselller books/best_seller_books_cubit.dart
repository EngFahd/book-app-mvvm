import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());

  final HomeRepo homeRepo;
  Future<void> featchBestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.featchBestSellerBooks();
    result.fold((failuer) {
      emit(BestSellerBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(BestSellerBooksSuccess(books));
    });
  }
}
