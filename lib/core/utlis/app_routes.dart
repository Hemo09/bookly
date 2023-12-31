import 'package:bookly/core/utlis/server_locator.dart';
import 'package:bookly/features/home_page/data/models/book_model/book_model.dart';
import 'package:bookly/features/home_page/data/repos/home_repo_implement.dart';
import 'package:bookly/features/home_page/presentaion/view_model/similar_books/similar_books_cubit.dart';
import 'package:bookly/features/home_page/presentaion/views/book_details_view.dart';
import 'package:bookly/features/home_page/presentaion/views/home_page_view.dart';
import 'package:bookly/features/search_view/data/repository/search_view_repo_implemnt.dart';
import 'package:bookly/features/search_view/presenation/view/search_view.dart';
import 'package:bookly/features/search_view/presenation/view_model/cubit/search_cubit_cubit.dart';
import 'package:bookly/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NamedRouteScreen {
  static const kHomeView = "/homeview";
  static const kBookDetails = "/BookDetails";
  static const kSearchView = "/searchView";
}

class AppRoutes {
  static final routes = GoRouter(routes: [
    GoRoute(
      path: NamedRouteScreen.kHomeView,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: NamedRouteScreen.kBookDetails,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplement>()),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: NamedRouteScreen.kSearchView,
      builder: (context, state) => BlocProvider(
        create: (context) => SearchCubit(getIt.get<SearchViewImplement>()),
        child: const SearchView(),
      ),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
  ]);
}
