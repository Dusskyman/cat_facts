// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    FactPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FactPage(),
      );
    },
    FactHistoryPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FactHistoryPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          FactPageRoute.name,
          path: 'routeFactScreen',
        ),
        RouteConfig(
          FactHistoryPageRoute.name,
          path: 'routeHistoryFactScreen',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [FactPage]
class FactPageRoute extends PageRouteInfo<void> {
  const FactPageRoute()
      : super(
          FactPageRoute.name,
          path: 'routeFactScreen',
        );

  static const String name = 'FactPageRoute';
}

/// generated route for
/// [FactHistoryPage]
class FactHistoryPageRoute extends PageRouteInfo<void> {
  const FactHistoryPageRoute()
      : super(
          FactHistoryPageRoute.name,
          path: 'routeHistoryFactScreen',
        );

  static const String name = 'FactHistoryPageRoute';
}
