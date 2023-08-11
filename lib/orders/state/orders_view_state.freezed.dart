// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerName, String customerEmail)
        displayOrderForm,
    required TResult Function() displayLoading,
    required TResult Function(String errorMessage) displayError,
    required TResult Function() displayOrderPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult? Function()? displayLoading,
    TResult? Function(String errorMessage)? displayError,
    TResult? Function()? displayOrderPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult Function()? displayLoading,
    TResult Function(String errorMessage)? displayError,
    TResult Function()? displayOrderPlaced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOrderForm value) displayOrderForm,
    required TResult Function(_DisplayLoading value) displayLoading,
    required TResult Function(_DisplayError value) displayError,
    required TResult Function(_DisplayOrderPlaced value) displayOrderPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOrderForm value)? displayOrderForm,
    TResult? Function(_DisplayLoading value)? displayLoading,
    TResult? Function(_DisplayError value)? displayError,
    TResult? Function(_DisplayOrderPlaced value)? displayOrderPlaced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOrderForm value)? displayOrderForm,
    TResult Function(_DisplayLoading value)? displayLoading,
    TResult Function(_DisplayError value)? displayError,
    TResult Function(_DisplayOrderPlaced value)? displayOrderPlaced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersViewStateCopyWith<$Res> {
  factory $OrdersViewStateCopyWith(
          OrdersViewState value, $Res Function(OrdersViewState) then) =
      _$OrdersViewStateCopyWithImpl<$Res, OrdersViewState>;
}

/// @nodoc
class _$OrdersViewStateCopyWithImpl<$Res, $Val extends OrdersViewState>
    implements $OrdersViewStateCopyWith<$Res> {
  _$OrdersViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DisplayOrderFormCopyWith<$Res> {
  factory _$$_DisplayOrderFormCopyWith(
          _$_DisplayOrderForm value, $Res Function(_$_DisplayOrderForm) then) =
      __$$_DisplayOrderFormCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerName, String customerEmail});
}

/// @nodoc
class __$$_DisplayOrderFormCopyWithImpl<$Res>
    extends _$OrdersViewStateCopyWithImpl<$Res, _$_DisplayOrderForm>
    implements _$$_DisplayOrderFormCopyWith<$Res> {
  __$$_DisplayOrderFormCopyWithImpl(
      _$_DisplayOrderForm _value, $Res Function(_$_DisplayOrderForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
    Object? customerEmail = null,
  }) {
    return _then(_$_DisplayOrderForm(
      null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DisplayOrderForm implements _DisplayOrderForm {
  const _$_DisplayOrderForm(this.customerName, this.customerEmail);

  @override
  final String customerName;
  @override
  final String customerEmail;

  @override
  String toString() {
    return 'OrdersViewState.displayOrderForm(customerName: $customerName, customerEmail: $customerEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayOrderForm &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerName, customerEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisplayOrderFormCopyWith<_$_DisplayOrderForm> get copyWith =>
      __$$_DisplayOrderFormCopyWithImpl<_$_DisplayOrderForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerName, String customerEmail)
        displayOrderForm,
    required TResult Function() displayLoading,
    required TResult Function(String errorMessage) displayError,
    required TResult Function() displayOrderPlaced,
  }) {
    return displayOrderForm(customerName, customerEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult? Function()? displayLoading,
    TResult? Function(String errorMessage)? displayError,
    TResult? Function()? displayOrderPlaced,
  }) {
    return displayOrderForm?.call(customerName, customerEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult Function()? displayLoading,
    TResult Function(String errorMessage)? displayError,
    TResult Function()? displayOrderPlaced,
    required TResult orElse(),
  }) {
    if (displayOrderForm != null) {
      return displayOrderForm(customerName, customerEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOrderForm value) displayOrderForm,
    required TResult Function(_DisplayLoading value) displayLoading,
    required TResult Function(_DisplayError value) displayError,
    required TResult Function(_DisplayOrderPlaced value) displayOrderPlaced,
  }) {
    return displayOrderForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOrderForm value)? displayOrderForm,
    TResult? Function(_DisplayLoading value)? displayLoading,
    TResult? Function(_DisplayError value)? displayError,
    TResult? Function(_DisplayOrderPlaced value)? displayOrderPlaced,
  }) {
    return displayOrderForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOrderForm value)? displayOrderForm,
    TResult Function(_DisplayLoading value)? displayLoading,
    TResult Function(_DisplayError value)? displayError,
    TResult Function(_DisplayOrderPlaced value)? displayOrderPlaced,
    required TResult orElse(),
  }) {
    if (displayOrderForm != null) {
      return displayOrderForm(this);
    }
    return orElse();
  }
}

abstract class _DisplayOrderForm implements OrdersViewState {
  const factory _DisplayOrderForm(
          final String customerName, final String customerEmail) =
      _$_DisplayOrderForm;

  String get customerName;
  String get customerEmail;
  @JsonKey(ignore: true)
  _$$_DisplayOrderFormCopyWith<_$_DisplayOrderForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DisplayLoadingCopyWith<$Res> {
  factory _$$_DisplayLoadingCopyWith(
          _$_DisplayLoading value, $Res Function(_$_DisplayLoading) then) =
      __$$_DisplayLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisplayLoadingCopyWithImpl<$Res>
    extends _$OrdersViewStateCopyWithImpl<$Res, _$_DisplayLoading>
    implements _$$_DisplayLoadingCopyWith<$Res> {
  __$$_DisplayLoadingCopyWithImpl(
      _$_DisplayLoading _value, $Res Function(_$_DisplayLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DisplayLoading implements _DisplayLoading {
  const _$_DisplayLoading();

  @override
  String toString() {
    return 'OrdersViewState.displayLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisplayLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerName, String customerEmail)
        displayOrderForm,
    required TResult Function() displayLoading,
    required TResult Function(String errorMessage) displayError,
    required TResult Function() displayOrderPlaced,
  }) {
    return displayLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult? Function()? displayLoading,
    TResult? Function(String errorMessage)? displayError,
    TResult? Function()? displayOrderPlaced,
  }) {
    return displayLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult Function()? displayLoading,
    TResult Function(String errorMessage)? displayError,
    TResult Function()? displayOrderPlaced,
    required TResult orElse(),
  }) {
    if (displayLoading != null) {
      return displayLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOrderForm value) displayOrderForm,
    required TResult Function(_DisplayLoading value) displayLoading,
    required TResult Function(_DisplayError value) displayError,
    required TResult Function(_DisplayOrderPlaced value) displayOrderPlaced,
  }) {
    return displayLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOrderForm value)? displayOrderForm,
    TResult? Function(_DisplayLoading value)? displayLoading,
    TResult? Function(_DisplayError value)? displayError,
    TResult? Function(_DisplayOrderPlaced value)? displayOrderPlaced,
  }) {
    return displayLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOrderForm value)? displayOrderForm,
    TResult Function(_DisplayLoading value)? displayLoading,
    TResult Function(_DisplayError value)? displayError,
    TResult Function(_DisplayOrderPlaced value)? displayOrderPlaced,
    required TResult orElse(),
  }) {
    if (displayLoading != null) {
      return displayLoading(this);
    }
    return orElse();
  }
}

abstract class _DisplayLoading implements OrdersViewState {
  const factory _DisplayLoading() = _$_DisplayLoading;
}

/// @nodoc
abstract class _$$_DisplayErrorCopyWith<$Res> {
  factory _$$_DisplayErrorCopyWith(
          _$_DisplayError value, $Res Function(_$_DisplayError) then) =
      __$$_DisplayErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_DisplayErrorCopyWithImpl<$Res>
    extends _$OrdersViewStateCopyWithImpl<$Res, _$_DisplayError>
    implements _$$_DisplayErrorCopyWith<$Res> {
  __$$_DisplayErrorCopyWithImpl(
      _$_DisplayError _value, $Res Function(_$_DisplayError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_DisplayError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DisplayError implements _DisplayError {
  const _$_DisplayError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'OrdersViewState.displayError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisplayErrorCopyWith<_$_DisplayError> get copyWith =>
      __$$_DisplayErrorCopyWithImpl<_$_DisplayError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerName, String customerEmail)
        displayOrderForm,
    required TResult Function() displayLoading,
    required TResult Function(String errorMessage) displayError,
    required TResult Function() displayOrderPlaced,
  }) {
    return displayError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult? Function()? displayLoading,
    TResult? Function(String errorMessage)? displayError,
    TResult? Function()? displayOrderPlaced,
  }) {
    return displayError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult Function()? displayLoading,
    TResult Function(String errorMessage)? displayError,
    TResult Function()? displayOrderPlaced,
    required TResult orElse(),
  }) {
    if (displayError != null) {
      return displayError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOrderForm value) displayOrderForm,
    required TResult Function(_DisplayLoading value) displayLoading,
    required TResult Function(_DisplayError value) displayError,
    required TResult Function(_DisplayOrderPlaced value) displayOrderPlaced,
  }) {
    return displayError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOrderForm value)? displayOrderForm,
    TResult? Function(_DisplayLoading value)? displayLoading,
    TResult? Function(_DisplayError value)? displayError,
    TResult? Function(_DisplayOrderPlaced value)? displayOrderPlaced,
  }) {
    return displayError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOrderForm value)? displayOrderForm,
    TResult Function(_DisplayLoading value)? displayLoading,
    TResult Function(_DisplayError value)? displayError,
    TResult Function(_DisplayOrderPlaced value)? displayOrderPlaced,
    required TResult orElse(),
  }) {
    if (displayError != null) {
      return displayError(this);
    }
    return orElse();
  }
}

abstract class _DisplayError implements OrdersViewState {
  const factory _DisplayError(final String errorMessage) = _$_DisplayError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_DisplayErrorCopyWith<_$_DisplayError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DisplayOrderPlacedCopyWith<$Res> {
  factory _$$_DisplayOrderPlacedCopyWith(_$_DisplayOrderPlaced value,
          $Res Function(_$_DisplayOrderPlaced) then) =
      __$$_DisplayOrderPlacedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisplayOrderPlacedCopyWithImpl<$Res>
    extends _$OrdersViewStateCopyWithImpl<$Res, _$_DisplayOrderPlaced>
    implements _$$_DisplayOrderPlacedCopyWith<$Res> {
  __$$_DisplayOrderPlacedCopyWithImpl(
      _$_DisplayOrderPlaced _value, $Res Function(_$_DisplayOrderPlaced) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DisplayOrderPlaced implements _DisplayOrderPlaced {
  const _$_DisplayOrderPlaced();

  @override
  String toString() {
    return 'OrdersViewState.displayOrderPlaced()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DisplayOrderPlaced);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerName, String customerEmail)
        displayOrderForm,
    required TResult Function() displayLoading,
    required TResult Function(String errorMessage) displayError,
    required TResult Function() displayOrderPlaced,
  }) {
    return displayOrderPlaced();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult? Function()? displayLoading,
    TResult? Function(String errorMessage)? displayError,
    TResult? Function()? displayOrderPlaced,
  }) {
    return displayOrderPlaced?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerName, String customerEmail)?
        displayOrderForm,
    TResult Function()? displayLoading,
    TResult Function(String errorMessage)? displayError,
    TResult Function()? displayOrderPlaced,
    required TResult orElse(),
  }) {
    if (displayOrderPlaced != null) {
      return displayOrderPlaced();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOrderForm value) displayOrderForm,
    required TResult Function(_DisplayLoading value) displayLoading,
    required TResult Function(_DisplayError value) displayError,
    required TResult Function(_DisplayOrderPlaced value) displayOrderPlaced,
  }) {
    return displayOrderPlaced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOrderForm value)? displayOrderForm,
    TResult? Function(_DisplayLoading value)? displayLoading,
    TResult? Function(_DisplayError value)? displayError,
    TResult? Function(_DisplayOrderPlaced value)? displayOrderPlaced,
  }) {
    return displayOrderPlaced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOrderForm value)? displayOrderForm,
    TResult Function(_DisplayLoading value)? displayLoading,
    TResult Function(_DisplayError value)? displayError,
    TResult Function(_DisplayOrderPlaced value)? displayOrderPlaced,
    required TResult orElse(),
  }) {
    if (displayOrderPlaced != null) {
      return displayOrderPlaced(this);
    }
    return orElse();
  }
}

abstract class _DisplayOrderPlaced implements OrdersViewState {
  const factory _DisplayOrderPlaced() = _$_DisplayOrderPlaced;
}
