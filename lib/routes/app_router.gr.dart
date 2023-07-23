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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../clothcustomization/cloth_customization_view.dart' as _i5;
import '../commonui/bespoke_error_widget.dart' as _i4;
import '../home/first/first_page.dart' as _i6;
import '../home/home_screen.dart' as _i3;
import '../home/second/second_page.dart' as _i7;
import '../home/third/third_page.dart' as _i8;
import '../onboarding/on_boarding_page.dart' as _i2;
import '../splash/splash_screen_page.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashScreenPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SplashScreenPage(),
      );
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.OnBoardingPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.HomeScreen(),
      );
    },
    BespokeErrorWidgetRoute.name: (routeData) {
      final args = routeData.argsAs<BespokeErrorWidgetRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.BespokeErrorWidget(args.errorMessage),
      );
    },
    ClothCustomizationViewRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ClothCustomizationView(),
      );
    },
    FirstPageRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.FirstPage(),
      );
    },
    SecondPageRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.SecondPage(),
      );
    },
    ThirdPageRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ThirdPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          SplashScreenPageRoute.name,
          path: '/splash',
        ),
        _i9.RouteConfig(
          OnBoardingPageRoute.name,
          path: '/onboarding',
        ),
        _i9.RouteConfig(
          HomeScreenRoute.name,
          path: '/home',
          children: [
            _i9.RouteConfig(
              FirstPageRouter.name,
              path: 'firstpage',
              parent: HomeScreenRoute.name,
              children: [
                _i9.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: FirstPageRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                )
              ],
            ),
            _i9.RouteConfig(
              SecondPageRouter.name,
              path: 'secondpage',
              parent: HomeScreenRoute.name,
              children: [
                _i9.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: SecondPageRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                )
              ],
            ),
            _i9.RouteConfig(
              ThirdPageRouter.name,
              path: 'thirdpage',
              parent: HomeScreenRoute.name,
              children: [
                _i9.RouteConfig(
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
        _i9.RouteConfig(
          BespokeErrorWidgetRoute.name,
          path: '/bespokeErrorWidget',
        ),
        _i9.RouteConfig(
          ClothCustomizationViewRoute.name,
          path: '/clothCustomizationView',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenPageRoute extends _i9.PageRouteInfo<void> {
  const SplashScreenPageRoute()
      : super(
          SplashScreenPageRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashScreenPageRoute';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingPageRoute extends _i9.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(
          OnBoardingPageRoute.name,
          path: '/onboarding',
        );

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i9.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.BespokeErrorWidget]
class BespokeErrorWidgetRoute
    extends _i9.PageRouteInfo<BespokeErrorWidgetRouteArgs> {
  BespokeErrorWidgetRoute({required String? errorMessage})
      : super(
          BespokeErrorWidgetRoute.name,
          path: '/bespokeErrorWidget',
          args: BespokeErrorWidgetRouteArgs(errorMessage: errorMessage),
        );

  static const String name = 'BespokeErrorWidgetRoute';
}

class BespokeErrorWidgetRouteArgs {
  const BespokeErrorWidgetRouteArgs({required this.errorMessage});

  final String? errorMessage;

  @override
  String toString() {
    return 'BespokeErrorWidgetRouteArgs{errorMessage: $errorMessage}';
  }
}

/// generated route for
/// [_i5.ClothCustomizationView]
class ClothCustomizationViewRoute extends _i9.PageRouteInfo<void> {
  const ClothCustomizationViewRoute()
      : super(
          ClothCustomizationViewRoute.name,
          path: '/clothCustomizationView',
        );

  static const String name = 'ClothCustomizationViewRoute';
}

/// generated route for
/// [_i6.FirstPage]
class FirstPageRouter extends _i9.PageRouteInfo<void> {
  const FirstPageRouter({List<_i9.PageRouteInfo>? children})
      : super(
          FirstPageRouter.name,
          path: 'firstpage',
          initialChildren: children,
        );

  static const String name = 'FirstPageRouter';
}

/// generated route for
/// [_i7.SecondPage]
class SecondPageRouter extends _i9.PageRouteInfo<void> {
  const SecondPageRouter({List<_i9.PageRouteInfo>? children})
      : super(
          SecondPageRouter.name,
          path: 'secondpage',
          initialChildren: children,
        );

  static const String name = 'SecondPageRouter';
}

/// generated route for
/// [_i8.ThirdPage]
class ThirdPageRouter extends _i9.PageRouteInfo<void> {
  const ThirdPageRouter({List<_i9.PageRouteInfo>? children})
      : super(
          ThirdPageRouter.name,
          path: 'thirdpage',
          initialChildren: children,
        );

  static const String name = 'ThirdPageRouter';
}
