import 'package:book_store/constanceApp.dart';
import 'package:book_store/core/utils/AppRouter.dart';
import 'package:book_store/core/utils/api-services.dart';
import 'package:book_store/core/utils/services-locator.dart';
import 'package:book_store/features/home/data/repos/home-repo-implement.dart';
import 'package:book_store/features/home/data/repos/home-repo.dart';
import 'package:book_store/features/home/presentaion/manege/Featured%20boox/feature_books_cubit.dart';
import 'package:book_store/features/home/presentaion/manege/bestselller%20books/best_seller_books_cubit.dart';
import 'package:book_store/features/home/presentaion/views/book-Detils-viwe.dart';
import 'package:book_store/features/home/presentaion/views/home.dart';
import 'package:book_store/features/home/presentaion/views/widgets/book-Detiles-body.dart';
import 'package:book_store/features/search-viwe/presentaion/views/Search-view.dart';
import 'package:book_store/features/spashview/presntation/views/splashviwe.dart';
import 'package:book_store/features/spashview/presntation/views/widgets/splashViweBody.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:go_router/go_router.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(gitIt.get<HomeRepoImplement>()),
        ),
        BlocProvider(
          create: (context) => BestSellerBooksCubit(gitIt.get<HomeRepoImplement>()),
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
