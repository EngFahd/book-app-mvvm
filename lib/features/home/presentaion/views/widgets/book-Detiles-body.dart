import 'package:book_store/features/home/presentaion/views/widgets/CustemBookDetielsAppBar.dart';
import 'package:flutter/material.dart';

class BookDetiledBody extends StatelessWidget {
  const BookDetiledBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [CustemBookDetielsAppBar()],
      ),
    );
  }
}

