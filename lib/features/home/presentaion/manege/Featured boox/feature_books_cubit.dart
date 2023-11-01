import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchFeaturedBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.featchFeatureBooks();

    result.fold((failuer) {
      emit(FeatureBooksFailler(failuer.errorMessage));
    }, (books) {
      emit(FeatureBooksSucces(books));
    });
  }
}
