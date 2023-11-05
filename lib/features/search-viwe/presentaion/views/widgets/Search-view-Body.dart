import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/search-viwe/data/mange/Searchcubit/search_items_cubit.dart';
import 'package:book_store/features/search-viwe/presentaion/views/widgets/search-list-view.dart';
import 'package:book_store/features/search-viwe/presentaion/views/widgets/textfiled-search-viwe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, });
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          TextFiledSearchView(),
          SizedBox(height: 20),
          Expanded(child: Searchlistviwe())
        ],
      ),
    );
  }
}
