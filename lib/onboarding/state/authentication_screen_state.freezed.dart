// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() startNextScreen,
    required TResult Function(String errorMessage) error,
    required TResult Function() displayOnboardingScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? displayOnboardingScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? startNextScreen,
    TResult Function(String errorMessage)? error,
    TResult Function()? displayOnboardingScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthStartNextScreen value) startNextScreen,
    required TResult Function(_AuthError value) error,
    required TResult Function(_AuthDisplayOnboardingScreen value)
        displayOnboardingScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthStartNextScreen value)? startNextScreen,
    TResult? Function(_AuthError value)? error,
    TResult? Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthStartNextScreen value)? startNextScreen,
    TResult Function(_AuthError value)? error,
    TResult Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationScreenStateCopyWith<$Res> {
  factory $AuthenticationScreenStateCopyWith(AuthenticationScreenState value,
          $Res Function(AuthenticationScreenState) then) =
      _$AuthenticationScreenStateCopyWithImpl<$Res, AuthenticationScreenState>;
}

/// @nodoc
class _$AuthenticationScreenStateCopyWithImpl<$Res,
        $Val extends AuthenticationScreenState>
    implements $AuthenticationScreenStateCopyWith<$Res> {
  _$AuthenticationScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthLoadingCopyWith<$Res> {
  factory _$$_AuthLoadingCopyWith(
          _$_AuthLoading value, $Res Function(_$_AuthLoading) then) =
      __$$_AuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthLoadingCopyWithImpl<$Res>
    extends _$AuthenticationScreenStateCopyWithImpl<$Res, _$_AuthLoading>
    implements _$$_AuthLoadingCopyWith<$Res> {
  __$$_AuthLoadingCopyWithImpl(
      _$_AuthLoading _value, $Res Function(_$_AuthLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthLoading implements _AuthLoading {
  const _$_AuthLoading();

  @override
  String toString() {
    return 'AuthenticationScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() startNextScreen,
    required TResult Function(String errorMessage) error,
    required TResult Function() displayOnboardingScreen,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? displayOnboardingScreen,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? startNextScreen,
    TResult Function(String errorMessage)? error,
    TResult Function()? displayOnboardingScreen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthStartNextScreen value) startNextScreen,
    required TResult Function(_AuthError value) error,
    required TResult Function(_AuthDisplayOnboardingScreen value)
        displayOnboardingScreen,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthStartNextScreen value)? startNextScreen,
    TResult? Function(_AuthError value)? error,
    TResult? Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthStartNextScreen value)? startNextScreen,
    TResult Function(_AuthError value)? error,
    TResult Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoading implements AuthenticationScreenState {
  const factory _AuthLoading() = _$_AuthLoading;
}

/// @nodoc
abstract class _$$_AuthStartNextScreenCopyWith<$Res> {
  factory _$$_AuthStartNextScreenCopyWith(_$_AuthStartNextScreen value,
          $Res Function(_$_AuthStartNextScreen) then) =
      __$$_AuthStartNextScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStartNextScreenCopyWithImpl<$Res>
    extends _$AuthenticationScreenStateCopyWithImpl<$Res,
        _$_AuthStartNextScreen>
    implements _$$_AuthStartNextScreenCopyWith<$Res> {
  __$$_AuthStartNextScreenCopyWithImpl(_$_AuthStartNextScreen _value,
      $Res Function(_$_AuthStartNextScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStartNextScreen implements _AuthStartNextScreen {
  const _$_AuthStartNextScreen();

  @override
  String toString() {
    return 'AuthenticationScreenState.startNextScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStartNextScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() startNextScreen,
    required TResult Function(String errorMessage) error,
    required TResult Function() displayOnboardingScreen,
  }) {
    return startNextScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? displayOnboardingScreen,
  }) {
    return startNextScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? startNextScreen,
    TResult Function(String errorMessage)? error,
    TResult Function()? displayOnboardingScreen,
    required TResult orElse(),
  }) {
    if (startNextScreen != null) {
      return startNextScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthStartNextScreen value) startNextScreen,
    required TResult Function(_AuthError value) error,
    required TResult Function(_AuthDisplayOnboardingScreen value)
        displayOnboardingScreen,
  }) {
    return startNextScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthStartNextScreen value)? startNextScreen,
    TResult? Function(_AuthError value)? error,
    TResult? Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
  }) {
    return startNextScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthStartNextScreen value)? startNextScreen,
    TResult Function(_AuthError value)? error,
    TResult Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
    required TResult orElse(),
  }) {
    if (startNextScreen != null) {
      return startNextScreen(this);
    }
    return orElse();
  }
}

abstract class _AuthStartNextScreen implements AuthenticationScreenState {
  const factory _AuthStartNextScreen() = _$_AuthStartNextScreen;
}

/// @nodoc
abstract class _$$_AuthErrorCopyWith<$Res> {
  factory _$$_AuthErrorCopyWith(
          _$_AuthError value, $Res Function(_$_AuthError) then) =
      __$$_AuthErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_AuthErrorCopyWithImpl<$Res>
    extends _$AuthenticationScreenStateCopyWithImpl<$Res, _$_AuthError>
    implements _$$_AuthErrorCopyWith<$Res> {
  __$$_AuthErrorCopyWithImpl(
      _$_AuthError _value, $Res Function(_$_AuthError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_AuthError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthError implements _AuthError {
  const _$_AuthError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthenticationScreenState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthErrorCopyWith<_$_AuthError> get copyWith =>
      __$$_AuthErrorCopyWithImpl<_$_AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() startNextScreen,
    required TResult Function(String errorMessage) error,
    required TResult Function() displayOnboardingScreen,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? displayOnboardingScreen,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? startNextScreen,
    TResult Function(String errorMessage)? error,
    TResult Function()? displayOnboardingScreen,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthStartNextScreen value) startNextScreen,
    required TResult Function(_AuthError value) error,
    required TResult Function(_AuthDisplayOnboardingScreen value)
        displayOnboardingScreen,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthStartNextScreen value)? startNextScreen,
    TResult? Function(_AuthError value)? error,
    TResult? Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthStartNextScreen value)? startNextScreen,
    TResult Function(_AuthError value)? error,
    TResult Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthError implements AuthenticationScreenState {
  const factory _AuthError(final String errorMessage) = _$_AuthError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_AuthErrorCopyWith<_$_AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthDisplayOnboardingScreenCopyWith<$Res> {
  factory _$$_AuthDisplayOnboardingScreenCopyWith(
          _$_AuthDisplayOnboardingScreen value,
          $Res Function(_$_AuthDisplayOnboardingScreen) then) =
      __$$_AuthDisplayOnboardingScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthDisplayOnboardingScreenCopyWithImpl<$Res>
    extends _$AuthenticationScreenStateCopyWithImpl<$Res,
        _$_AuthDisplayOnboardingScreen>
    implements _$$_AuthDisplayOnboardingScreenCopyWith<$Res> {
  __$$_AuthDisplayOnboardingScreenCopyWithImpl(
      _$_AuthDisplayOnboardingScreen _value,
      $Res Function(_$_AuthDisplayOnboardingScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthDisplayOnboardingScreen implements _AuthDisplayOnboardingScreen {
  const _$_AuthDisplayOnboardingScreen();

  @override
  String toString() {
    return 'AuthenticationScreenState.displayOnboardingScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDisplayOnboardingScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() startNextScreen,
    required TResult Function(String errorMessage) error,
    required TResult Function() displayOnboardingScreen,
  }) {
    return displayOnboardingScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? startNextScreen,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? displayOnboardingScreen,
  }) {
    return displayOnboardingScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? startNextScreen,
    TResult Function(String errorMessage)? error,
    TResult Function()? displayOnboardingScreen,
    required TResult orElse(),
  }) {
    if (displayOnboardingScreen != null) {
      return displayOnboardingScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthStartNextScreen value) startNextScreen,
    required TResult Function(_AuthError value) error,
    required TResult Function(_AuthDisplayOnboardingScreen value)
        displayOnboardingScreen,
  }) {
    return displayOnboardingScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthStartNextScreen value)? startNextScreen,
    TResult? Function(_AuthError value)? error,
    TResult? Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
  }) {
    return displayOnboardingScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthStartNextScreen value)? startNextScreen,
    TResult Function(_AuthError value)? error,
    TResult Function(_AuthDisplayOnboardingScreen value)?
        displayOnboardingScreen,
    required TResult orElse(),
  }) {
    if (displayOnboardingScreen != null) {
      return displayOnboardingScreen(this);
    }
    return orElse();
  }
}

abstract class _AuthDisplayOnboardingScreen
    implements AuthenticationScreenState {
  const factory _AuthDisplayOnboardingScreen() = _$_AuthDisplayOnboardingScreen;
}
