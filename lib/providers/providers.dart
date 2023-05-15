import 'package:arnavapp/onboarding/state/authentication_screen_state.dart';
import 'package:arnavapp/onboarding/viewmodel/onboarding_state_notifier.dart';
import 'package:arnavapp/splash/state/splash_screen_state.dart';
import 'package:arnavapp/splash/viewmodel/splash_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final splashProvider = StateNotifierProvider<SplashStateNotifier, SplashScreenState>(
  (ref) {
    return SplashStateNotifier();
  },
);

final onboardingProvider = StateNotifierProvider<OnboardingStateNotifier, AuthenticationScreenState>(
      (ref) {
    return OnboardingStateNotifier();
  },
);