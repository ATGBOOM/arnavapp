import 'package:arnavapp/appFirebase/authentication.dart';
import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/dbhelper/i_local_storage_manager.dart';
import 'package:arnavapp/dbhelper/local_storage_keys.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:arnavapp/onboarding/state/authentication_screen_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OnboardingStateNotifier extends StateNotifier<AuthenticationScreenState>{
  final _authentication = Authentication();
  final _logger = locator<LoggerUtils>();
  final _TAG = "OnboardingStateNotifier";
  final _localeManager = locator<ILocalStorageManager>();
  OnboardingStateNotifier():super(const AuthenticationScreenState.displayOnboardingScreen());



  Future<void> fetchUserDetails() async{
    state = const AuthenticationScreenState.loading();
    await _authentication.initialiseFirebase().then((User? user) async{
      if(user == null){
        _logger.log(_TAG, "User is not logged in before");
        var userDetails = await _authentication.startGoogleSignIn();
        _logger.log(_TAG, "user details received: $userDetails");
        if (userDetails != null){
          await _localeManager.addStringToKeyValueStorage(LocalStorageKeys.User_Email, userDetails?.email??"");
          await _localeManager.addStringToKeyValueStorage(LocalStorageKeys.User_Name, userDetails?.displayName??"");
          await _localeManager.addStringToKeyValueStorage(LocalStorageKeys.User_ID, userDetails?.uid??"");
          await _localeManager.addBoolToLocalKeyValueStorage(LocalStorageKeys.Is_User_Logged_In, true);
          state = const AuthenticationScreenState.startNextScreen();
        }
      }
    }).onError((error, stackTrace){
      _logger.log(_TAG, "Error $error");
      state = AuthenticationScreenState.error(error.toString());
    });
  }

}