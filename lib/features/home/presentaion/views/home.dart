import 'package:book_store/core/utils/Styles.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/features/home/presentaion/views/widgets/FeatureListViwe.dart';
import 'package:book_store/features/home/presentaion/views/widgets/custem_app_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustemAppBar(),
          CustemListViwe(),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Best Sellers",
              style: Style.textMeduim,
            ),
          )
        ],
      ),
    );
  }
}
