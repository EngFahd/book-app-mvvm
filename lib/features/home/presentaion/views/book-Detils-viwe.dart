import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/presentaion/manege/bookdetails%20cubite/book_detailes_cubit.dart';
import 'package:book_store/features/home/presentaion/views/widgets/book-Detiles-body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetilesViwe extends StatefulWidget {
  const BookDetilesViwe({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetilesViwe> createState() => _BookDetilesViweState();
}

class _BookDetilesViweState extends State<BookDetilesViwe> {
  @override
  void initState() {
    BlocProvider.of<BookDetailesCubit>(context).featchBestSellerBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetiledBody(bookModel: widget.bookModel),
      ),
    );
  }
}
