// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CategoryModel category) save,
    required TResult Function(CategoryModel category) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CategoryModel category)? save,
    TResult? Function(CategoryModel category)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CategoryModel category)? save,
    TResult Function(CategoryModel category)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialEvent value) init,
    required TResult Function(CategorySaveEvent value) save,
    required TResult Function(CategoryDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialEvent value)? init,
    TResult? Function(CategorySaveEvent value)? save,
    TResult? Function(CategoryDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialEvent value)? init,
    TResult Function(CategorySaveEvent value)? save,
    TResult Function(CategoryDeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryInitialEventImplCopyWith<$Res> {
  factory _$$CategoryInitialEventImplCopyWith(_$CategoryInitialEventImpl value,
          $Res Function(_$CategoryInitialEventImpl) then) =
      __$$CategoryInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryInitialEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategoryInitialEventImpl>
    implements _$$CategoryInitialEventImplCopyWith<$Res> {
  __$$CategoryInitialEventImplCopyWithImpl(_$CategoryInitialEventImpl _value,
      $Res Function(_$CategoryInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryInitialEventImpl implements CategoryInitialEvent {
  const _$CategoryInitialEventImpl();

  @override
  String toString() {
    return 'CategoryEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CategoryModel category) save,
    required TResult Function(CategoryModel category) delete,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CategoryModel category)? save,
    TResult? Function(CategoryModel category)? delete,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CategoryModel category)? save,
    TResult Function(CategoryModel category)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialEvent value) init,
    required TResult Function(CategorySaveEvent value) save,
    required TResult Function(CategoryDeleteEvent value) delete,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialEvent value)? init,
    TResult? Function(CategorySaveEvent value)? save,
    TResult? Function(CategoryDeleteEvent value)? delete,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialEvent value)? init,
    TResult Function(CategorySaveEvent value)? save,
    TResult Function(CategoryDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CategoryInitialEvent implements CategoryEvent {
  const factory CategoryInitialEvent() = _$CategoryInitialEventImpl;
}

/// @nodoc
abstract class _$$CategorySaveEventImplCopyWith<$Res> {
  factory _$$CategorySaveEventImplCopyWith(_$CategorySaveEventImpl value,
          $Res Function(_$CategorySaveEventImpl) then) =
      __$$CategorySaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel category});
}

/// @nodoc
class __$$CategorySaveEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategorySaveEventImpl>
    implements _$$CategorySaveEventImplCopyWith<$Res> {
  __$$CategorySaveEventImplCopyWithImpl(_$CategorySaveEventImpl _value,
      $Res Function(_$CategorySaveEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategorySaveEventImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$CategorySaveEventImpl implements CategorySaveEvent {
  const _$CategorySaveEventImpl(this.category);

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'CategoryEvent.save(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySaveEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySaveEventImplCopyWith<_$CategorySaveEventImpl> get copyWith =>
      __$$CategorySaveEventImplCopyWithImpl<_$CategorySaveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CategoryModel category) save,
    required TResult Function(CategoryModel category) delete,
  }) {
    return save(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CategoryModel category)? save,
    TResult? Function(CategoryModel category)? delete,
  }) {
    return save?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CategoryModel category)? save,
    TResult Function(CategoryModel category)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialEvent value) init,
    required TResult Function(CategorySaveEvent value) save,
    required TResult Function(CategoryDeleteEvent value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialEvent value)? init,
    TResult? Function(CategorySaveEvent value)? save,
    TResult? Function(CategoryDeleteEvent value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialEvent value)? init,
    TResult Function(CategorySaveEvent value)? save,
    TResult Function(CategoryDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class CategorySaveEvent implements CategoryEvent {
  const factory CategorySaveEvent(final CategoryModel category) =
      _$CategorySaveEventImpl;

  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$CategorySaveEventImplCopyWith<_$CategorySaveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryDeleteEventImplCopyWith<$Res> {
  factory _$$CategoryDeleteEventImplCopyWith(_$CategoryDeleteEventImpl value,
          $Res Function(_$CategoryDeleteEventImpl) then) =
      __$$CategoryDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel category});
}

/// @nodoc
class __$$CategoryDeleteEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$CategoryDeleteEventImpl>
    implements _$$CategoryDeleteEventImplCopyWith<$Res> {
  __$$CategoryDeleteEventImplCopyWithImpl(_$CategoryDeleteEventImpl _value,
      $Res Function(_$CategoryDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryDeleteEventImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$CategoryDeleteEventImpl implements CategoryDeleteEvent {
  const _$CategoryDeleteEventImpl(this.category);

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'CategoryEvent.delete(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDeleteEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDeleteEventImplCopyWith<_$CategoryDeleteEventImpl> get copyWith =>
      __$$CategoryDeleteEventImplCopyWithImpl<_$CategoryDeleteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CategoryModel category) save,
    required TResult Function(CategoryModel category) delete,
  }) {
    return delete(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CategoryModel category)? save,
    TResult? Function(CategoryModel category)? delete,
  }) {
    return delete?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CategoryModel category)? save,
    TResult Function(CategoryModel category)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryInitialEvent value) init,
    required TResult Function(CategorySaveEvent value) save,
    required TResult Function(CategoryDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryInitialEvent value)? init,
    TResult? Function(CategorySaveEvent value)? save,
    TResult? Function(CategoryDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryInitialEvent value)? init,
    TResult Function(CategorySaveEvent value)? save,
    TResult Function(CategoryDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CategoryDeleteEvent implements CategoryEvent {
  const factory CategoryDeleteEvent(final CategoryModel category) =
      _$CategoryDeleteEventImpl;

  CategoryModel get category;
  @JsonKey(ignore: true)
  _$$CategoryDeleteEventImplCopyWith<_$CategoryDeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
