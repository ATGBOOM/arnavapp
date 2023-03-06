import 'dart:async';

import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.microtask(() {
        Timer(Duration (seconds: 2),(){
          context.router.navigate(HomeScreenRoute());
        });
      },);
    }, const[]);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/shirt.png"
                  )
                )
              ),
            )
          ],
        ),
      ),
    );
  }

}