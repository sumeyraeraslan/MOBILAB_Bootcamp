import 'package:drips/app_view.dart';
import 'package:drips/views/account/accountViews.dart';
import 'package:drips/views/favIconViews/favIconViews.dart';
import 'package:drips/views/searchviews/searchviews.dart';
import 'package:drips/views/tekrarsiz_anasayfa.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

final _routerKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter._();

  static const String anasayfa = '/';
  static const String account = '/account';
  static const String favorites = '/favorites';
  static const String search = '/search';


  static final router = GoRouter(
    navigatorKey: _routerKey,
    initialLocation: anasayfa,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            AppView(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouter.anasayfa,
                builder: (context, state) => const Anasayfa1(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouter.search,
                builder: (context, state) => const Search(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouter.favorites,
                builder: (context, state) => const FavIconView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouter.account,
                builder: (context, state) => const Account(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
