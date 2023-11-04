import 'package:book_store/core/utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustemRateListViweItem extends StatelessWidget {
  const CustemRateListViweItem({
    super.key,
    required this.count,
    required this.rate,
  });
  final num count;
  final num rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "$rate",
          style: Style.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          "(${count})",
          style: Style.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
