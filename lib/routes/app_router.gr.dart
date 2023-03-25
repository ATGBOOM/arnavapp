// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../commonui/no_internet_page.dart' as _i3;
import '../home/first/first_page.dart' as _i4;
import '../home/home_screen.dart' as _i2;
import '../home/second/second_page.dart' as _i5;
import '../home/third/third_page.dart' as _i6;
import '../splash/splash_screen.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SplashScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HomeScreen(),
      );
    },
    NoInternetPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.NoInternetPage(),
      );
    },
    FirstPageRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.FirstPage(),
      );
    },
    SecondPageRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SecondPage(),
      );
    },
    ThirdPageRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ThirdPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          SplashScreenRoute.name,
          path: '/splash',
        ),
        _i7.RouteConfig(
          HomeScreenRoute.name,
          path: '/home',
          children: [
            _i7.RouteConfig(
              FirstPageRouter.name,
              path: 'firstpage',
              parent: HomeScreenRoute.name,
              children: [
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: FirstPageRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                )
              ],
            ),
            _i7.RouteConfig(
              SecondPageRouter.name,
              path: 'secondpage',
              parent: HomeScreenRoute.name,
              children: [
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: SecondPageRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                )
              ],
            ),
            _i7.RouteConfig(
              ThirdPageRouter.name,
              path: 'thirdpage',
              parent: HomeScreenRoute.name,
              children: [
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ThirdPageRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                )
              ],
            ),
          ],
        ),
        _i7.RouteConfig(
          NoInternetPageRoute.name,
          path: '/noInternet',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i3.NoInternetPage]
class NoInternetPageRoute extends _i7.PageRouteInfo<void> {
  const NoInternetPageRoute()
      : super(
          NoInternetPageRoute.name,
          path: '/noInternet',
        );

  static const String name = 'NoInternetPageRoute';
}

/// generated route for
/// [_i4.FirstPage]
class FirstPageRouter extends _i7.PageRouteInfo<void> {
  const FirstPageRouter({List<_i7.PageRouteInfo>? children})
      : super(
          FirstPageRouter.name,
          path: 'firstpage',
          initialChildren: children,
        );

  static const String name = 'FirstPageRouter';
}

/// generated route for
/// [_i5.SecondPage]
class SecondPageRouter extends _i7.PageRouteInfo<void> {
  const SecondPageRouter({List<_i7.PageRouteInfo>? children})
      : super(
          SecondPageRouter.name,
          path: 'secondpage',
          initialChildren: children,
        );

  static const String name = 'SecondPageRouter';
}

/// generated route for
/// [_i6.ThirdPage]
class ThirdPageRouter extends _i7.PageRouteInfo<void> {
  const ThirdPageRouter({List<_i7.PageRouteInfo>? children})
      : super(
          ThirdPageRouter.name,
          path: 'thirdpage',
          initialChildren: children,
        );

  static const String name = 'ThirdPageRouter';
}
