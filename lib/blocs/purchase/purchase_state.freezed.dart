// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PurchaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Purchase> purchases) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Purchase> purchases)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Purchase> purchases)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitialState value) initial,
    required TResult Function(PurchaseLoadingState value) loading,
    required TResult Function(PurchaseLoadedState value) loaded,
    required TResult Function(PurchaseErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialState value)? initial,
    TResult? Function(PurchaseLoadingState value)? loading,
    TResult? Function(PurchaseLoadedState value)? loaded,
    TResult? Function(PurchaseErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialState value)? initial,
    TResult Function(PurchaseLoadingState value)? loading,
    TResult Function(PurchaseLoadedState value)? loaded,
    TResult Function(PurchaseErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseStateCopyWith<$Res> {
  factory $PurchaseStateCopyWith(
          PurchaseState value, $Res Function(PurchaseState) then) =
      _$PurchaseStateCopyWithImpl<$Res, PurchaseState>;
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res, $Val extends PurchaseState>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PurchaseInitialStateImplCopyWith<$Res> {
  factory _$$PurchaseInitialStateImplCopyWith(_$PurchaseInitialStateImpl value,
          $Res Function(_$PurchaseInitialStateImpl) then) =
      __$$PurchaseInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PurchaseInitialStateImplCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$PurchaseInitialStateImpl>
    implements _$$PurchaseInitialStateImplCopyWith<$Res> {
  __$$PurchaseInitialStateImplCopyWithImpl(_$PurchaseInitialStateImpl _value,
      $Res Function(_$PurchaseInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PurchaseInitialStateImpl implements PurchaseInitialState {
  const _$PurchaseInitialStateImpl();

  @override
  String toString() {
    return 'PurchaseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Purchase> purchases) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Purchase> purchases)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Purchase> purchases)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitialState value) initial,
    required TResult Function(PurchaseLoadingState value) loading,
    required TResult Function(PurchaseLoadedState value) loaded,
    required TResult Function(PurchaseErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialState value)? initial,
    TResult? Function(PurchaseLoadingState value)? loading,
    TResult? Function(PurchaseLoadedState value)? loaded,
    TResult? Function(PurchaseErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialState value)? initial,
    TResult Function(PurchaseLoadingState value)? loading,
    TResult Function(PurchaseLoadedState value)? loaded,
    TResult Function(PurchaseErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PurchaseInitialState implements PurchaseState {
  const factory PurchaseInitialState() = _$PurchaseInitialStateImpl;
}

/// @nodoc
abstract class _$$PurchaseLoadingStateImplCopyWith<$Res> {
  factory _$$PurchaseLoadingStateImplCopyWith(_$PurchaseLoadingStateImpl value,
          $Res Function(_$PurchaseLoadingStateImpl) then) =
      __$$PurchaseLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PurchaseLoadingStateImplCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$PurchaseLoadingStateImpl>
    implements _$$PurchaseLoadingStateImplCopyWith<$Res> {
  __$$PurchaseLoadingStateImplCopyWithImpl(_$PurchaseLoadingStateImpl _value,
      $Res Function(_$PurchaseLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PurchaseLoadingStateImpl implements PurchaseLoadingState {
  const _$PurchaseLoadingStateImpl();

  @override
  String toString() {
    return 'PurchaseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Purchase> purchases) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Purchase> purchases)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Purchase> purchases)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(PurchaseInitialState value) initial,
    required TResult Function(PurchaseLoadingState value) loading,
    required TResult Function(PurchaseLoadedState value) loaded,
    required TResult Function(PurchaseErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialState value)? initial,
    TResult? Function(PurchaseLoadingState value)? loading,
    TResult? Function(PurchaseLoadedState value)? loaded,
    TResult? Function(PurchaseErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialState value)? initial,
    TResult Function(PurchaseLoadingState value)? loading,
    TResult Function(PurchaseLoadedState value)? loaded,
    TResult Function(PurchaseErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PurchaseLoadingState implements PurchaseState {
  const factory PurchaseLoadingState() = _$PurchaseLoadingStateImpl;
}

/// @nodoc
abstract class _$$PurchaseLoadedStateImplCopyWith<$Res> {
  factory _$$PurchaseLoadedStateImplCopyWith(_$PurchaseLoadedStateImpl value,
          $Res Function(_$PurchaseLoadedStateImpl) then) =
      __$$PurchaseLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Purchase> purchases});
}

/// @nodoc
class __$$PurchaseLoadedStateImplCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$PurchaseLoadedStateImpl>
    implements _$$PurchaseLoadedStateImplCopyWith<$Res> {
  __$$PurchaseLoadedStateImplCopyWithImpl(_$PurchaseLoadedStateImpl _value,
      $Res Function(_$PurchaseLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchases = null,
  }) {
    return _then(_$PurchaseLoadedStateImpl(
      null == purchases
          ? _value._purchases
          : purchases // ignore: cast_nullable_to_non_nullable
              as List<Purchase>,
    ));
  }
}

/// @nodoc

class _$PurchaseLoadedStateImpl implements PurchaseLoadedState {
  const _$PurchaseLoadedStateImpl(final List<Purchase> purchases)
      : _purchases = purchases;

  final List<Purchase> _purchases;
  @override
  List<Purchase> get purchases {
    if (_purchases is EqualUnmodifiableListView) return _purchases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchases);
  }

  @override
  String toString() {
    return 'PurchaseState.loaded(purchases: $purchases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._purchases, _purchases));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_purchases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseLoadedStateImplCopyWith<_$PurchaseLoadedStateImpl> get copyWith =>
      __$$PurchaseLoadedStateImplCopyWithImpl<_$PurchaseLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Purchase> purchases) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(purchases);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Purchase> purchases)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(purchases);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Purchase> purchases)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(purchases);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitialState value) initial,
    required TResult Function(PurchaseLoadingState value) loading,
    required TResult Function(PurchaseLoadedState value) loaded,
    required TResult Function(PurchaseErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialState value)? initial,
    TResult? Function(PurchaseLoadingState value)? loading,
    TResult? Function(PurchaseLoadedState value)? loaded,
    TResult? Function(PurchaseErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialState value)? initial,
    TResult Function(PurchaseLoadingState value)? loading,
    TResult Function(PurchaseLoadedState value)? loaded,
    TResult Function(PurchaseErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PurchaseLoadedState implements PurchaseState {
  const factory PurchaseLoadedState(final List<Purchase> purchases) =
      _$PurchaseLoadedStateImpl;

  List<Purchase> get purchases;
  @JsonKey(ignore: true)
  _$$PurchaseLoadedStateImplCopyWith<_$PurchaseLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseErrorStateImplCopyWith<$Res> {
  factory _$$PurchaseErrorStateImplCopyWith(_$PurchaseErrorStateImpl value,
          $Res Function(_$PurchaseErrorStateImpl) then) =
      __$$PurchaseErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PurchaseErrorStateImplCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$PurchaseErrorStateImpl>
    implements _$$PurchaseErrorStateImplCopyWith<$Res> {
  __$$PurchaseErrorStateImplCopyWithImpl(_$PurchaseErrorStateImpl _value,
      $Res Function(_$PurchaseErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PurchaseErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PurchaseErrorStateImpl implements PurchaseErrorState {
  const _$PurchaseErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PurchaseState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseErrorStateImplCopyWith<_$PurchaseErrorStateImpl> get copyWith =>
      __$$PurchaseErrorStateImplCopyWithImpl<_$PurchaseErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Purchase> purchases) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Purchase> purchases)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Purchase> purchases)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitialState value) initial,
    required TResult Function(PurchaseLoadingState value) loading,
    required TResult Function(PurchaseLoadedState value) loaded,
    required TResult Function(PurchaseErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialState value)? initial,
    TResult? Function(PurchaseLoadingState value)? loading,
    TResult? Function(PurchaseLoadedState value)? loaded,
    TResult? Function(PurchaseErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialState value)? initial,
    TResult Function(PurchaseLoadingState value)? loading,
    TResult Function(PurchaseLoadedState value)? loaded,
    TResult Function(PurchaseErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PurchaseErrorState implements PurchaseState {
  const factory PurchaseErrorState(final String message) =
      _$PurchaseErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PurchaseErrorStateImplCopyWith<_$PurchaseErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
