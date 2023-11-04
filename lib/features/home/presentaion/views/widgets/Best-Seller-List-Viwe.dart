import 'package:book_store/core/widgets/errorWidget.dart';
import 'package:book_store/core/widgets/loading.dart';
import 'package:book_store/features/home/presentaion/manege/bestselller%20books/best_seller_books_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/Best-Seller-Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViwe extends StatelessWidget {
  const BestSellerListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BestSellerItems(
                  bookModel: state.books[index] );
                
            },
          );
        } else if (state is BestSellerBooksFailuer) {
          return CustemErrorWidget(messageError: state.errorMassage);
        } else
          return const CustemLoadingWidget();
      },
    );
  }
}
