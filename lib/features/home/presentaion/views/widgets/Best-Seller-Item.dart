import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                // width: 100,
                // height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.red,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetsData.kTestim))),
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
                    "Harry Potter and the Glopal of fire ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Style.textStyle20.copyWith(
                      fontFamily: kGetSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  "J.K Rowling",
                  style: Style.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      r"19.99 $",
                      style: Style.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xffFFDD4F),
                        ),
                        const SizedBox(
                          width: 6.3,
                        ),
                        const Text(
                          '4.8',
                          style: Style.textStyle16,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "(245)",
                          style: Style.textStyle14
                              .copyWith(color: const Color(0xff707070)),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
