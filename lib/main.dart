import 'package:book_store/features/spashview/presntation/views/splashviwe.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SpashViwe(),
    );
  }
}
