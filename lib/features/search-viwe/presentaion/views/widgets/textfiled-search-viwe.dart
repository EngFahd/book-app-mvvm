import 'package:book_store/features/search-viwe/data/mange/Searchcubit/search_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFiledSearchView extends StatelessWidget {
  const TextFiledSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (valu) {
        BlocProvider.of<SearchItemsCubit>(context)
            .featchSearchBook(category: valu);
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
          hintText: "Search Books",
          suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 24,
                color: Colors.white.withOpacity(0.2),
              )),
          enabledBorder: outlineBorder(),
          focusedBorder: outlineBorder()),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white.withOpacity(0.4)),
    );
  }
}
