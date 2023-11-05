import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/core/widgets/CustemButton.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/presentaion/views/widgets/CustemBookDetielsAppBar.dart';
import 'package:book_store/features/home/presentaion/views/widgets/CustemRateListViweItem.dart';
import 'package:book_store/features/home/presentaion/views/widgets/FeatureListViwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/ListVieweBookDetiels.dart';
import 'package:book_store/features/home/presentaion/views/widgets/buttonBook.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_Listviwe_item.dart';
import 'package:flutter/material.dart';

class BookDetiledBody extends StatelessWidget {
  const BookDetiledBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var wideth = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustemBookDetielsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: wideth * 0.15),
                  child: CustemBookImage(
                      imgUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
                ),
                const SizedBox(height: 50),
                Text(
                  bookModel.volumeInfo.title ?? '',
                  textAlign: TextAlign.center,
                  style: Style.textStyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text(bookModel.volumeInfo.authors![0],
                      style: Style.textStyle18.copyWith(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 20),
                CustemRateListViweItem(
                  count: bookModel.volumeInfo.averageRating ?? 0,
                  rate: bookModel.volumeInfo.ratingsCount ?? 0,
                ),
                const SizedBox(height: 35),
                ButtonBook(bookModel: bookModel),
                const Expanded(child: SizedBox(height: 20)),
                // const Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You Can Also like",
                    style:
                        Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 8),
                const SimilarListVieweBookDetiels(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        )
      ],
    );
  }
}
