
import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeatureBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBooksLoading());

    var response = await homeRepo.featchFeatureBooks();

    response.fold((failure) {
      emit(FeatureBooksFailler(failure.errMessage));
    }, (books) {
      emit(FeatureBooksSucces(books));
    });
  }
}
