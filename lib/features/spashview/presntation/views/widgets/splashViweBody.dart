import 'dart:math';

import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViweBody extends StatelessWidget {
  const SplashViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // give shildern all width perant
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Fahd",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
