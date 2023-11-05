import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/presentaion/views/book-Detils-viwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/CustemRateListViweItem.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SizedBox(
              height: 125,
              child: AspectRatio(
                aspectRatio: 2.7 / 4,
                child: CachedNetworkImage(
                  imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail ?? '',
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyle20.copyWith(
                        fontFamily: kGetSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Style.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Style.textStyle14.copyWith(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      const Spacer(),
                    ],
                  )
                ],
              ),
            ),
            CustemRateListViweItem(
                rate: bookModel.volumeInfo.averageRating ?? 0,
                count: bookModel.volumeInfo.ratingsCount ?? 0)
          ],
        ),
      ),
    );
  }
}
