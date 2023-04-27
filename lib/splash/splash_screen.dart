import 'dart:async';

import 'package:arnavapp/base/color_constants.dart';
import 'package:arnavapp/base/custom_loader.dart';
import 'package:arnavapp/dbhelper/i_local_storage_manager.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:arnavapp/providers/providers.dart';
import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../base/logger_utils.dart';
import '../dbhelper/local_storage_keys.dart';

class SplashScreen extends HookConsumerWidget {
  final _localeManager = locator<ILocalStorageManager>();
  final _logger = locator<LoggerUtils>();
  final _TAG = "Splash Screen";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashStateProvider = ref.watch(splashProvider);

    return splashStateProvider.when(
        displaySplashScreen: (){
          return Scaffold(
            backgroundColor: ColorConstants.kBlackColor,
            body: Center(
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset("assets/images/splash_background.png",
                        fit: BoxFit.fill,
                      )

                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        width: 250,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/logo.png"
                                )
                            )
                        ),

                      ),
                    ),
                  )


                ],
              ),
            ),
          );
        },
        startHomeScreen: (){
          return Text("start home screen state");
        } ,
        startLoginScreen: (){
          return Text("start login screen state");
        }
    );

  }

}