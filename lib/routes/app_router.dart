import 'package:arnavapp/home/home_screen.dart';
import 'package:arnavapp/splash/splash_screen.dart';
import 'package:auto_route/annotations.dart';

import '../home/first/first_page.dart';
import '../home/second/second_page.dart';
import '../home/third/third_page.dart';

@MaterialAutoRouter(
    routes: [
      AutoRoute(
          path: "/splash",
          initial: true,
          page: SplashScreen
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
      )
    ]
)
class $AppRouter{

}