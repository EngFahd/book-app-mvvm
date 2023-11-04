import 'package:flutter/material.dart';

class CustemLoadingWidget extends StatelessWidget {
  const CustemLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
