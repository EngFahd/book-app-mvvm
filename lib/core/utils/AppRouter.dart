import 'package:book_store/core/utils/services-locator.dart';
import 'package:book_store/features/home/data/models/BookModel.dart';
import 'package:book_store/features/home/data/repos/home-repo-implement.dart';
import 'package:book_store/features/home/presentaion/manege/bookdetails%20cubite/book_detailes_cubit.dart';
import 'package:book_store/features/home/presentaion/views/book-Detils-viwe.dart';
import 'package:book_store/features/home/presentaion/views/home.dart';
import 'package:book_store/features/search-viwe/presentaion/views/Search-view.dart';
import 'package:book_store/features/spashview/presntation/views/splashviwe.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashViwe(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: '/bookDetilesView',
        builder: (context, state) => BlocProvider(
          create: (context) => BookDetailesCubit(gitIt<HomeRepoImpl>()),
          child:  BookDetilesViwe(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: '/bookSearchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
