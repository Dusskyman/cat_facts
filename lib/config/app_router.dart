import 'package:auto_route/auto_route.dart';
import 'package:cat_facts/config/app_routes.dart';
import 'package:cat_facts/pages/fact_history_page/fact_history_page.dart';
import 'package:cat_facts/pages/fact_page/fact_page.dart';
import 'package:cat_facts/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      page: FactPage,
      path: AppRoutes.routeFactScreen,
    ),
    AutoRoute(
      page: FactHistoryPage,
      path: AppRoutes.routeHistoryFactScreen,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

class RouteService {
  RouteService._();

  static final AppRouter _routeService = AppRouter();

  static AppRouter get instance => _routeService;
}
