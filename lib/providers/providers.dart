import 'package:arnavapp/clothcustomization/state/cloth_customization_view_state.dart';
import 'package:arnavapp/clothcustomization/viewmodel/cloth_customization_state_notifier.dart';
import 'package:arnavapp/home/first/first_page.dart';
import 'package:arnavapp/onboarding/state/authentication_screen_state.dart';
import 'package:arnavapp/onboarding/viewmodel/onboarding_state_notifier.dart';
import 'package:arnavapp/orders/state/orders_view_state.dart';
import 'package:arnavapp/orders/viewmodel/order_state_notifier.dart';
import 'package:arnavapp/splash/state/splash_screen_state.dart';
import 'package:arnavapp/splash/viewmodel/splash_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home/first/viewmodel/first_page_state_notifier.dart';
import '../home/first/viewstate/first_page_view_state.dart';

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

final firstPageProvider = StateNotifierProvider<FirstPageStateNotifier, FirstPageViewState>(
      (ref) {
    return FirstPageStateNotifier();
  },
);

final clothCustomizationProvider = StateNotifierProvider<ClothCustomizationStateNotifier, ClothCustomizationViewState>(
      (ref) {
    return ClothCustomizationStateNotifier();
  },
);

final ordersProvider = StateNotifierProvider<OrderStateNotifier, OrdersViewState>(
      (ref) {
    return OrderStateNotifier();
  },
);