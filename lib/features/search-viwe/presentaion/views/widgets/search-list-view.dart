import 'package:book_store/core/widgets/errorWidget.dart';
import 'package:book_store/core/widgets/loading.dart';
import 'package:book_store/features/home/presentaion/views/widgets/Best-Seller-Item.dart';
import 'package:book_store/features/search-viwe/data/mange/Searchcubit/search_items_cubit.dart';
import 'package:book_store/features/search-viwe/presentaion/views/widgets/ItemListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Searchlistviwe extends StatelessWidget {
  const Searchlistviwe({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchItemsCubit, SearchItemsState>(
      builder: (context, state) {
        if (state is SearchItemsSucces) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  ListViewItem(bookModel: state.books[index],);
            },
          );
        } else if (state is SearchItemsFailler) {
          return CustemErrorWidget(messageError: state.errorMessage);
        }
        return const CustemLoadingWidget();
      },
    );
  }
}
