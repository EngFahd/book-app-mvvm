import 'package:book_store/features/home/presentaion/views/widgets/custem_Listviwe_item.dart';
import 'package:flutter/material.dart';

class ListVieweBookDetiels extends StatelessWidget {
  const ListVieweBookDetiels({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.17,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustemListViweItem(imgUrl: 'https://i.pinimg.com/564x/63/8c/2c/638c2c2ec538c0071aaf461aa0536484.jpg',);
        },
      ),
    );
  }
}
