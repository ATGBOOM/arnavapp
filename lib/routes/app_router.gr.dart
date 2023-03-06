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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../home/first/first_page.dart' as _i3;
import '../home/home_screen.dart' as _i2;
import '../home/second/second_page.dart' as _i4;
import '../home/third/third_page.dart' as _i5;
import '../splash/splash_screen.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SplashScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HomeScreen(),
      );
    },
    FirstPageRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.FirstPage(),
      );
    },
    SecondPageRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SecondPage(),
      );
    },
    ThirdPageRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ThirdPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          SplashScreenRoute.name,
          path: '/splash',
        ),
        _i6.RouteConfig(
          HomeScreenRoute.name,
          path: '/home',
          children: [
            _i6.RouteConfig(
              FirstPageRouter.name,
              path: 'firstpage',
              parent: HomeScreenRoute.name,
              children: [
                _i6.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: FirstPageRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                )
              ],
            ),
            _i6.RouteConfig(
              SecondPageRouter.name,
              path: 'secondpage',
              parent: HomeScreenRoute.name,
              children: [
                _i6.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: SecondPageRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                )
              ],
            ),
            _i6.RouteConfig(
              ThirdPageRouter.name,
              path: 'thirdpage',
              parent: HomeScreenRoute.name,
              children: [
                _i6.RouteConfig(
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
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i3.FirstPage]
class FirstPageRouter extends _i6.PageRouteInfo<void> {
  const FirstPageRouter({List<_i6.PageRouteInfo>? children})
      : super(
          FirstPageRouter.name,
          path: 'firstpage',
          initialChildren: children,
        );

  static const String name = 'FirstPageRouter';
}

/// generated route for
/// [_i4.SecondPage]
class SecondPageRouter extends _i6.PageRouteInfo<void> {
  const SecondPageRouter({List<_i6.PageRouteInfo>? children})
      : super(
          SecondPageRouter.name,
          path: 'secondpage',
          initialChildren: children,
        );

  static const String name = 'SecondPageRouter';
}

/// generated route for
/// [_i5.ThirdPage]
class ThirdPageRouter extends _i6.PageRouteInfo<void> {
  const ThirdPageRouter({List<_i6.PageRouteInfo>? children})
      : super(
          ThirdPageRouter.name,
          path: 'thirdpage',
          initialChildren: children,
        );

  static const String name = 'ThirdPageRouter';
}
