import 'package:arnavapp/commonui/bespoke_error_widget.dart';
import 'package:arnavapp/commonui/custom_loader.dart';
import 'package:arnavapp/commonui/empty_widget.dart';
import 'package:arnavapp/onboarding/google_sign_in_button.dart';
import 'package:arnavapp/providers/providers.dart';
import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../base/color_constants.dart';

class OnBoardingPage extends HookConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardingStateProvider = ref.watch(onboardingProvider);
    onboardingStateProvider.whenOrNull(
      startNextScreen: (){
        context.router.replace(const HomeScreenRoute());
      }
    );
    return onboardingStateProvider.when(
        loading: (){
          return CustomLoader();
        },
        startNextScreen: (){
          return EmptyWidget();
        },
        error: (String errorMessage){
          return BespokeErrorWidget(errorMessage);
        },
        displayOnboardingScreen: (){
          return Scaffold(
            backgroundColor: ColorConstants.kBlackColor,
            body: Center(
              child: Stack(
                alignment: Alignment.center,
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
                  ),
                  Positioned(
                    bottom: 40,
                      child: GoogleSignInButton()
                  )

                ],
              ),
            ),
          );
        }

    );

  }

}