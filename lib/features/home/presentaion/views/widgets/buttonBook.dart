import 'package:book_store/core/utils/functions/UrlLancher.dart';
import 'package:book_store/core/widgets/CustemButton.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonBook extends StatelessWidget {
  const ButtonBook({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustemButton(
            text: r'Free',
            backgroundColor: Colors.white,
            colorText: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustemButton(
            onTap: () async {
              UrlCustemLancher(context,bookModel.volumeInfo.previewLink!);
            },
            text: getText(bookModel),
            fontSize: 16,
            backgroundColor: const Color(0xffEf8262),
            colorText: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }

  getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    }
    return 'Preview ';
  }
}
