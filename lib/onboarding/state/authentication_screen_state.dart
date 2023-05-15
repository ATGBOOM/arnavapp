import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_screen_state.freezed.dart';

@freezed
class AuthenticationScreenState with _$AuthenticationScreenState{
  const factory AuthenticationScreenState.loading()= _AuthLoading;
  const factory AuthenticationScreenState.startNextScreen() = _AuthStartNextScreen;
  const factory AuthenticationScreenState.error(String errorMessage) = _AuthError;
  const factory AuthenticationScreenState.displayOnboardingScreen() = _AuthDisplayOnboardingScreen;
}