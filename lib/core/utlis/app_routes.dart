import 'package:bookly/features/home_page/presentaion/views/home_page_view.dart';
import 'package:bookly/features/splash/presentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class NamedRouteScreen {
  static const kHomeView = "/homeview";
  static const kspalshView = "/homeview";
}

class AppRoutes {
  static final routes = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: NamedRouteScreen.kHomeView,
      builder: (context, state) => const HomePage(),
    ),
  ]);
}
