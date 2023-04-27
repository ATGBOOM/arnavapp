import 'package:arnavapp/splash/state/splash_screen_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashStateNotifier extends StateNotifier<SplashScreenState>{
  SplashStateNotifier():super(const SplashScreenState.startHomeScreen()){
    initialise();
  }
  void initialise(){
    state = const SplashScreenState.displaySplashScreen();
    Future.delayed(Duration(seconds: 3), (){
      bool isToken
      state = const SplashScreenState.startHomeScreen();

    });
  }
}