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
        children: [CustemAppBar(), CustemListViwe()],
      ),
    );
  }
}
