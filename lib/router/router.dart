import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_bug_repro/pages/home.dart';

import '../pages/splash.dart';

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  // mock of a provider injecting my router
  return globalRouter;
});

// just to create a simple gorouter
final globalRouter = GoRouter(
  navigatorKey: _key,
  debugLogDiagnostics: true,
  routes: _routes,
  // initialLocation: _initialPage.routeLocation,
);

final _routes = [
  GoRoute(
    path: _initialPage.routeLocation,
    name: _initialPage.pageName,
    builder: (_, state) => _initialPage,
  ),
  GoRoute(
    path: _homePage.routeLocation,
    name: _homePage.pageName,
    builder: (_, state) => _homePage,
  ),
];

const _initialPage = SplashPage();
const _homePage = HomePage();
