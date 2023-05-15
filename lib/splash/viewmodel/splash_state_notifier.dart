import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/dbhelper/i_local_storage_manager.dart';
import 'package:arnavapp/dbhelper/local_storage_keys.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:arnavapp/splash/state/splash_screen_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashStateNotifier extends StateNotifier<SplashScreenState>{
  final _logger = locator<LoggerUtils>();
  final _TAG = "SplashStateNotifier";
  final _localeManager = locator<ILocalStorageManager>();
  SplashStateNotifier():super(const SplashScreenState.displaySplashScreen()){
    initialise();
  }
  void initialise() {
    state = const SplashScreenState.displaySplashScreen();
    Future.delayed(Duration(seconds: 3), ()async{
      bool isUserLoggedIn = await _localeManager.getBoolFromKeyValueStorage(LocalStorageKeys.Is_User_Logged_In);
      if (isUserLoggedIn) {
        state = const SplashScreenState.startHomeScreen();
      }else{
        state = const SplashScreenState.startLoginScreen();
      }
    });
  }
}