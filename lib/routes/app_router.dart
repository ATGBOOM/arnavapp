import 'package:arnavapp/clothcustomization/cloth_customization_view.dart';
import 'package:arnavapp/commonui/bespoke_error_widget.dart';
import 'package:arnavapp/home/home_screen.dart';
import 'package:arnavapp/onboarding/on_boarding_page.dart';
import 'package:arnavapp/orders/orders_page.dart';
import 'package:arnavapp/splash/splash_screen_page.dart';
import 'package:auto_route/annotations.dart';

import '../home/first/first_page.dart';
import '../home/second/second_page.dart';
import '../home/third/third_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen, Page, Route',
    routes: [
      AutoRoute(
          path: "/splash",
          initial: true,
          page: SplashScreenPage
      ),
      AutoRoute(
          path: "/onboarding",
          page: OnBoardingPage
      ),
      AutoRoute(
        path: "/home",
        page: HomeScreen,
        children: [
          AutoRoute(
            path: "firstpage",
            name: "firstPageRouter",
            page: FirstPage,
            children: [
              RedirectRoute(path: "*", redirectTo: '')
            ]
          ),
          AutoRoute(
            path: "secondpage",
            name: "secondPageRouter",
            page: SecondPage,
            children: [
              RedirectRoute(path: "*", redirectTo: '')
            ]
          ),
          AutoRoute(
            path: "thirdpage",
            name: "thirdPageRouter",
            page: ThirdPage,
            children: [
              RedirectRoute(path: "*", redirectTo: '')
            ]
          ),
        ]
      ),
      AutoRoute(
        path: "/bespokeErrorWidget",
        page: BespokeErrorWidget
      ),
      AutoRoute(
          path: "/clothCustomizationView",
          page: ClothCustomizationView
      ),
      AutoRoute(
          path: "/ordersPage",
          page: OrdersPage
      ),
    ]
)
class $AppRouter{

}