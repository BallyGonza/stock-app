// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ProductModel product) save,
    required TResult Function(ProductModel product) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ProductModel product)? save,
    TResult? Function(ProductModel product)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ProductModel product)? save,
    TResult Function(ProductModel product)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitialEvent value) init,
    required TResult Function(ProductSaveEvent value) save,
    required TResult Function(ProductDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialEvent value)? init,
    TResult? Function(ProductSaveEvent value)? save,
    TResult? Function(ProductDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialEvent value)? init,
    TResult Function(ProductSaveEvent value)? save,
    TResult Function(ProductDeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductInitialEventImplCopyWith<$Res> {
  factory _$$ProductInitialEventImplCopyWith(_$ProductInitialEventImpl value,
          $Res Function(_$ProductInitialEventImpl) then) =
      __$$ProductInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductInitialEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductInitialEventImpl>
    implements _$$ProductInitialEventImplCopyWith<$Res> {
  __$$ProductInitialEventImplCopyWithImpl(_$ProductInitialEventImpl _value,
      $Res Function(_$ProductInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductInitialEventImpl implements ProductInitialEvent {
  const _$ProductInitialEventImpl();

  @override
  String toString() {
    return 'ProductEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ProductModel product) save,
    required TResult Function(ProductModel product) delete,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ProductModel product)? save,
    TResult? Function(ProductModel product)? delete,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ProductModel product)? save,
    TResult Function(ProductModel product)? delete,
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
    required TResult Function(ProductInitialEvent value) init,
    required TResult Function(ProductSaveEvent value) save,
    required TResult Function(ProductDeleteEvent value) delete,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialEvent value)? init,
    TResult? Function(ProductSaveEvent value)? save,
    TResult? Function(ProductDeleteEvent value)? delete,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialEvent value)? init,
    TResult Function(ProductSaveEvent value)? save,
    TResult Function(ProductDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ProductInitialEvent implements ProductEvent {
  const factory ProductInitialEvent() = _$ProductInitialEventImpl;
}

/// @nodoc
abstract class _$$ProductSaveEventImplCopyWith<$Res> {
  factory _$$ProductSaveEventImplCopyWith(_$ProductSaveEventImpl value,
          $Res Function(_$ProductSaveEventImpl) then) =
      __$$ProductSaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$ProductSaveEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductSaveEventImpl>
    implements _$$ProductSaveEventImplCopyWith<$Res> {
  __$$ProductSaveEventImplCopyWithImpl(_$ProductSaveEventImpl _value,
      $Res Function(_$ProductSaveEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductSaveEventImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$ProductSaveEventImpl implements ProductSaveEvent {
  const _$ProductSaveEventImpl({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'ProductEvent.save(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSaveEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSaveEventImplCopyWith<_$ProductSaveEventImpl> get copyWith =>
      __$$ProductSaveEventImplCopyWithImpl<_$ProductSaveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ProductModel product) save,
    required TResult Function(ProductModel product) delete,
  }) {
    return save(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ProductModel product)? save,
    TResult? Function(ProductModel product)? delete,
  }) {
    return save?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ProductModel product)? save,
    TResult Function(ProductModel product)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitialEvent value) init,
    required TResult Function(ProductSaveEvent value) save,
    required TResult Function(ProductDeleteEvent value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialEvent value)? init,
    TResult? Function(ProductSaveEvent value)? save,
    TResult? Function(ProductDeleteEvent value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialEvent value)? init,
    TResult Function(ProductSaveEvent value)? save,
    TResult Function(ProductDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class ProductSaveEvent implements ProductEvent {
  const factory ProductSaveEvent({required final ProductModel product}) =
      _$ProductSaveEventImpl;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$ProductSaveEventImplCopyWith<_$ProductSaveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductDeleteEventImplCopyWith<$Res> {
  factory _$$ProductDeleteEventImplCopyWith(_$ProductDeleteEventImpl value,
          $Res Function(_$ProductDeleteEventImpl) then) =
      __$$ProductDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$ProductDeleteEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductDeleteEventImpl>
    implements _$$ProductDeleteEventImplCopyWith<$Res> {
  __$$ProductDeleteEventImplCopyWithImpl(_$ProductDeleteEventImpl _value,
      $Res Function(_$ProductDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductDeleteEventImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$ProductDeleteEventImpl implements ProductDeleteEvent {
  const _$ProductDeleteEventImpl({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'ProductEvent.delete(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDeleteEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDeleteEventImplCopyWith<_$ProductDeleteEventImpl> get copyWith =>
      __$$ProductDeleteEventImplCopyWithImpl<_$ProductDeleteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ProductModel product) save,
    required TResult Function(ProductModel product) delete,
  }) {
    return delete(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ProductModel product)? save,
    TResult? Function(ProductModel product)? delete,
  }) {
    return delete?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ProductModel product)? save,
    TResult Function(ProductModel product)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInitialEvent value) init,
    required TResult Function(ProductSaveEvent value) save,
    required TResult Function(ProductDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInitialEvent value)? init,
    TResult? Function(ProductSaveEvent value)? save,
    TResult? Function(ProductDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInitialEvent value)? init,
    TResult Function(ProductSaveEvent value)? save,
    TResult Function(ProductDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class ProductDeleteEvent implements ProductEvent {
  const factory ProductDeleteEvent({required final ProductModel product}) =
      _$ProductDeleteEventImpl;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$ProductDeleteEventImplCopyWith<_$ProductDeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
