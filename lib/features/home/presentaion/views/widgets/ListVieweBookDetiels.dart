import 'package:book_store/core/widgets/errorWidget.dart';
import 'package:book_store/core/widgets/loading.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/presentaion/manege/bookdetails%20cubite/book_detailes_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_Listviwe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarListVieweBookDetiels extends StatelessWidget {
  const SimilarListVieweBookDetiels({super.key, });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailesCubit, BookDetailesCubitState>(
      builder: (context, state) {
        if (state is BookDetailesCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.17,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  CustemListViweItem(
                  imgUrl:
                      state.books[index].volumeInfo.imageLinks?.thumbnail?? " ",
                );
              },
            ),
          );
        } else if (state is BookDetailesFailler) {
          return CustemErrorWidget(messageError: state.errorMessage);
        } else {
          return const CustemLoadingWidget();
        }
      },
    );
  }
}
