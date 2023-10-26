import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.kLogo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 24,
              ))
        ],
      ),
    );
  }
}
