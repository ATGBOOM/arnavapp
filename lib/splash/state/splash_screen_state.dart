import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_screen_state.freezed.dart';
@freezed
class SplashScreenState with _$SplashScreenState{
  const factory SplashScreenState.displaySplashScreen() = _DisplaySplashScreen;
  const factory SplashScreenState.startHomeScreen() = _StartHomeScreen;
  const factory SplashScreenState.startLoginScreen() = _StartLoginScreen;

}