// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloth_customization_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClothCustomizationViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)
        displayClothStyle,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)?
        displayClothStyle,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)?
        displayClothStyle,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayClothStyles value) displayClothStyle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayClothStyles value)? displayClothStyle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayClothStyles value)? displayClothStyle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClothCustomizationViewStateCopyWith<$Res> {
  factory $ClothCustomizationViewStateCopyWith(
          ClothCustomizationViewState value,
          $Res Function(ClothCustomizationViewState) then) =
      _$ClothCustomizationViewStateCopyWithImpl<$Res,
          ClothCustomizationViewState>;
}

/// @nodoc
class _$ClothCustomizationViewStateCopyWithImpl<$Res,
        $Val extends ClothCustomizationViewState>
    implements $ClothCustomizationViewStateCopyWith<$Res> {
  _$ClothCustomizationViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DisplayClothStylesCopyWith<$Res> {
  factory _$$_DisplayClothStylesCopyWith(_$_DisplayClothStyles value,
          $Res Function(_$_DisplayClothStyles) then) =
      __$$_DisplayClothStylesCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CustomizationEnum customizationEnum,
      List<String> clothStylesList,
      String stepperMessage,
      String titleMessage});
}

/// @nodoc
class __$$_DisplayClothStylesCopyWithImpl<$Res>
    extends _$ClothCustomizationViewStateCopyWithImpl<$Res,
        _$_DisplayClothStyles> implements _$$_DisplayClothStylesCopyWith<$Res> {
  __$$_DisplayClothStylesCopyWithImpl(
      _$_DisplayClothStyles _value, $Res Function(_$_DisplayClothStyles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customizationEnum = null,
    Object? clothStylesList = null,
    Object? stepperMessage = null,
    Object? titleMessage = null,
  }) {
    return _then(_$_DisplayClothStyles(
      null == customizationEnum
          ? _value.customizationEnum
          : customizationEnum // ignore: cast_nullable_to_non_nullable
              as CustomizationEnum,
      null == clothStylesList
          ? _value._clothStylesList
          : clothStylesList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == stepperMessage
          ? _value.stepperMessage
          : stepperMessage // ignore: cast_nullable_to_non_nullable
              as String,
      null == titleMessage
          ? _value.titleMessage
          : titleMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DisplayClothStyles implements _DisplayClothStyles {
  const _$_DisplayClothStyles(
      this.customizationEnum,
      final List<String> clothStylesList,
      this.stepperMessage,
      this.titleMessage)
      : _clothStylesList = clothStylesList;

  @override
  final CustomizationEnum customizationEnum;
  final List<String> _clothStylesList;
  @override
  List<String> get clothStylesList {
    if (_clothStylesList is EqualUnmodifiableListView) return _clothStylesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clothStylesList);
  }

  @override
  final String stepperMessage;
  @override
  final String titleMessage;

  @override
  String toString() {
    return 'ClothCustomizationViewState.displayClothStyle(customizationEnum: $customizationEnum, clothStylesList: $clothStylesList, stepperMessage: $stepperMessage, titleMessage: $titleMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayClothStyles &&
            (identical(other.customizationEnum, customizationEnum) ||
                other.customizationEnum == customizationEnum) &&
            const DeepCollectionEquality()
                .equals(other._clothStylesList, _clothStylesList) &&
            (identical(other.stepperMessage, stepperMessage) ||
                other.stepperMessage == stepperMessage) &&
            (identical(other.titleMessage, titleMessage) ||
                other.titleMessage == titleMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      customizationEnum,
      const DeepCollectionEquality().hash(_clothStylesList),
      stepperMessage,
      titleMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisplayClothStylesCopyWith<_$_DisplayClothStyles> get copyWith =>
      __$$_DisplayClothStylesCopyWithImpl<_$_DisplayClothStyles>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)
        displayClothStyle,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return displayClothStyle(
        customizationEnum, clothStylesList, stepperMessage, titleMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)?
        displayClothStyle,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return displayClothStyle?.call(
        customizationEnum, clothStylesList, stepperMessage, titleMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)?
        displayClothStyle,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (displayClothStyle != null) {
      return displayClothStyle(
          customizationEnum, clothStylesList, stepperMessage, titleMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayClothStyles value) displayClothStyle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return displayClothStyle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayClothStyles value)? displayClothStyle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return displayClothStyle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayClothStyles value)? displayClothStyle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (displayClothStyle != null) {
      return displayClothStyle(this);
    }
    return orElse();
  }
}

abstract class _DisplayClothStyles implements ClothCustomizationViewState {
  const factory _DisplayClothStyles(
      final CustomizationEnum customizationEnum,
      final List<String> clothStylesList,
      final String stepperMessage,
      final String titleMessage) = _$_DisplayClothStyles;

  CustomizationEnum get customizationEnum;
  List<String> get clothStylesList;
  String get stepperMessage;
  String get titleMessage;
  @JsonKey(ignore: true)
  _$$_DisplayClothStylesCopyWith<_$_DisplayClothStyles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ClothCustomizationViewStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ClothCustomizationViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)
        displayClothStyle,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)?
        displayClothStyle,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)?
        displayClothStyle,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_DisplayClothStyles value) displayClothStyle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayClothStyles value)? displayClothStyle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayClothStyles value)? displayClothStyle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ClothCustomizationViewState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ClothCustomizationViewStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_Error(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ClothCustomizationViewState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)
        displayClothStyle,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)?
        displayClothStyle,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage)?
        displayClothStyle,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_DisplayClothStyles value) displayClothStyle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayClothStyles value)? displayClothStyle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayClothStyles value)? displayClothStyle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ClothCustomizationViewState {
  const factory _Error(final String errorMessage) = _$_Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
