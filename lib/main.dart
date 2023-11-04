
import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/utils/AppRouter.dart';
import 'package:book_store/core/utils/services-locator.dart';
import 'package:book_store/features/home/data/repos/home-repo-implement.dart';
import 'package:book_store/features/home/presentaion/manege/Featured%20box%20Cubite/feature_books_cubit.dart';
import 'package:book_store/features/home/presentaion/manege/bestselller%20books/best_seller_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:go_router/go_router.dart';

void main() {
  setup();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(gitIt<HomeRepoImpl>())..fetchFeaturedBooks()
           ,
        ),
        BlocProvider(
          create: (context) =>
              BestSellerBooksCubit(gitIt.get<HomeRepoImpl>())..featchBestSellerBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kMainColor,
            // =============== remmber this
            textTheme: GoogleFonts.montserratAlternatesTextTheme(
                ThemeData.dark().textTheme)),
      ),
    );
  }
}
// final _router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const SplashViwe(),
//     ),
//   ],
// );
