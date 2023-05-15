import 'package:arnavapp/onboarding/state/authentication_screen_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OnboardingStateNotifier extends StateNotifier<AuthenticationScreenState>{
  OnboardingStateNotifier():super(const AuthenticationScreenState.displayOnboardingScreen());


}