import 'package:book_store/core/widgets/errorWidget.dart';
import 'package:book_store/core/widgets/loading.dart';
import 'package:book_store/features/home/data/manege/Featured%20box%20Cubite/feature_books_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_Listviwe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustemFeatureListViwe extends StatelessWidget {
  const CustemFeatureListViwe({super.key});

  get bookModel => null;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .push('/bookDetilesView', extra: state.books[index]);
                    },
                    child: CustemListViweItem(
                        imgUrl: state.books[index].volumeInfo.imageLinks!
                                .smallThumbnail ??
                            ''));
              },
            ),
          );
        } else if (state is FeatureBooksFailler) {
          return CustemErrorWidget(messageError: state.errorMessage);
        } else
          return const CustemLoadingWidget();
      },
    );
  }
}
