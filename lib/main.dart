import 'package:book_store/constanceApp.dart';
import 'package:book_store/features/spashview/presntation/views/splashviwe.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kMainColor,
          // =============== remmber this
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
              ThemeData.dark().textTheme)),
      home: const SpashViwe(),
    );
  }
}
