// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialState value)? initial,
    TResult? Function(CategoryLoadingState value)? loading,
    TResult? Function(CategoryLoadedState value)? loaded,
    TResult? Function(CategoryErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryInitialStateImplCopyWith<$Res> {
  factory _$$CategoryInitialStateImplCopyWith(_$CategoryInitialStateImpl value,
          $Res Function(_$CategoryInitialStateImpl) then) =
      __$$CategoryInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryInitialStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryInitialStateImpl>
    implements _$$CategoryInitialStateImplCopyWith<$Res> {
  __$$CategoryInitialStateImplCopyWithImpl(_$CategoryInitialStateImpl _value,
      $Res Function(_$CategoryInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryInitialStateImpl implements CategoryInitialState {
  const _$CategoryInitialStateImpl();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialState value)? initial,
    TResult? Function(CategoryLoadingState value)? loading,
    TResult? Function(CategoryLoadedState value)? loaded,
    TResult? Function(CategoryErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoryInitialState implements CategoryState {
  const factory CategoryInitialState() = _$CategoryInitialStateImpl;
}

/// @nodoc
abstract class _$$CategoryLoadingStateImplCopyWith<$Res> {
  factory _$$CategoryLoadingStateImplCopyWith(_$CategoryLoadingStateImpl value,
          $Res Function(_$CategoryLoadingStateImpl) then) =
      __$$CategoryLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryLoadingStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadingStateImpl>
    implements _$$CategoryLoadingStateImplCopyWith<$Res> {
  __$$CategoryLoadingStateImplCopyWithImpl(_$CategoryLoadingStateImpl _value,
      $Res Function(_$CategoryLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryLoadingStateImpl implements CategoryLoadingState {
  const _$CategoryLoadingStateImpl();

  @override
  String toString() {
    return 'CategoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialState value)? initial,
    TResult? Function(CategoryLoadingState value)? loading,
    TResult? Function(CategoryLoadedState value)? loaded,
    TResult? Function(CategoryErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryLoadingState implements CategoryState {
  const factory CategoryLoadingState() = _$CategoryLoadingStateImpl;
}

/// @nodoc
abstract class _$$CategoryLoadedStateImplCopyWith<$Res> {
  factory _$$CategoryLoadedStateImplCopyWith(_$CategoryLoadedStateImpl value,
          $Res Function(_$CategoryLoadedStateImpl) then) =
      __$$CategoryLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$CategoryLoadedStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryLoadedStateImpl>
    implements _$$CategoryLoadedStateImplCopyWith<$Res> {
  __$$CategoryLoadedStateImplCopyWithImpl(_$CategoryLoadedStateImpl _value,
      $Res Function(_$CategoryLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoryLoadedStateImpl(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoryLoadedStateImpl implements CategoryLoadedState {
  const _$CategoryLoadedStateImpl(final List<Category> categories)
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoryState.loaded(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryLoadedStateImplCopyWith<_$CategoryLoadedStateImpl> get copyWith =>
      __$$CategoryLoadedStateImplCopyWithImpl<_$CategoryLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialState value)? initial,
    TResult? Function(CategoryLoadingState value)? loading,
    TResult? Function(CategoryLoadedState value)? loaded,
    TResult? Function(CategoryErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CategoryLoadedState implements CategoryState {
  const factory CategoryLoadedState(final List<Category> categories) =
      _$CategoryLoadedStateImpl;

  List<Category> get categories;
  @JsonKey(ignore: true)
  _$$CategoryLoadedStateImplCopyWith<_$CategoryLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryErrorStateImplCopyWith<$Res> {
  factory _$$CategoryErrorStateImplCopyWith(_$CategoryErrorStateImpl value,
          $Res Function(_$CategoryErrorStateImpl) then) =
      __$$CategoryErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CategoryErrorStateImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryErrorStateImpl>
    implements _$$CategoryErrorStateImplCopyWith<$Res> {
  __$$CategoryErrorStateImplCopyWithImpl(_$CategoryErrorStateImpl _value,
      $Res Function(_$CategoryErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CategoryErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryErrorStateImpl implements CategoryErrorState {
  const _$CategoryErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CategoryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryErrorStateImplCopyWith<_$CategoryErrorStateImpl> get copyWith =>
      __$$CategoryErrorStateImplCopyWithImpl<_$CategoryErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Category> categories) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Category> categories)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Category> categories)? loaded,
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
    required TResult Function(CategoryInitialState value) initial,
    required TResult Function(CategoryLoadingState value) loading,
    required TResult Function(CategoryLoadedState value) loaded,
    required TResult Function(CategoryErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialState value)? initial,
    TResult? Function(CategoryLoadingState value)? loading,
    TResult? Function(CategoryLoadedState value)? loaded,
    TResult? Function(CategoryErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialState value)? initial,
    TResult Function(CategoryLoadingState value)? loading,
    TResult Function(CategoryLoadedState value)? loaded,
    TResult Function(CategoryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoryErrorState implements CategoryState {
  const factory CategoryErrorState(final String message) =
      _$CategoryErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CategoryErrorStateImplCopyWith<_$CategoryErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
