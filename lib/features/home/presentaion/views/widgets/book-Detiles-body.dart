import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/features/home/presentaion/views/widgets/CustemBookDetielsAppBar.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_Listviwe_item.dart';
import 'package:flutter/material.dart';

class BookDetiledBody extends StatelessWidget {
  const BookDetiledBody({super.key});

  @override
  Widget build(BuildContext context) {
    var wideth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustemBookDetielsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: wideth * 0.1),
            child: const CustemBookImage(),
          ),
          const SizedBox(height: 43),
          Text(
            "The Jungle Book",
            style: Style.textStyle30.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: 0.7,
            child: Text("Rudyard Kipling",
                style: Style.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }
}
