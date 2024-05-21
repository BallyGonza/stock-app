// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PurchaseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PurchaseModel purchase) save,
    required TResult Function(PurchaseModel purchase) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PurchaseModel purchase)? save,
    TResult? Function(PurchaseModel purchase)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PurchaseModel purchase)? save,
    TResult Function(PurchaseModel purchase)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitialEvent value) init,
    required TResult Function(PurchaseSaveEvent value) save,
    required TResult Function(PurchaseDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialEvent value)? init,
    TResult? Function(PurchaseSaveEvent value)? save,
    TResult? Function(PurchaseDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialEvent value)? init,
    TResult Function(PurchaseSaveEvent value)? save,
    TResult Function(PurchaseDeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseEventCopyWith<$Res> {
  factory $PurchaseEventCopyWith(
          PurchaseEvent value, $Res Function(PurchaseEvent) then) =
      _$PurchaseEventCopyWithImpl<$Res, PurchaseEvent>;
}

/// @nodoc
class _$PurchaseEventCopyWithImpl<$Res, $Val extends PurchaseEvent>
    implements $PurchaseEventCopyWith<$Res> {
  _$PurchaseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PurchaseInitialEventImplCopyWith<$Res> {
  factory _$$PurchaseInitialEventImplCopyWith(_$PurchaseInitialEventImpl value,
          $Res Function(_$PurchaseInitialEventImpl) then) =
      __$$PurchaseInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PurchaseInitialEventImplCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res, _$PurchaseInitialEventImpl>
    implements _$$PurchaseInitialEventImplCopyWith<$Res> {
  __$$PurchaseInitialEventImplCopyWithImpl(_$PurchaseInitialEventImpl _value,
      $Res Function(_$PurchaseInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PurchaseInitialEventImpl implements PurchaseInitialEvent {
  const _$PurchaseInitialEventImpl();

  @override
  String toString() {
    return 'PurchaseEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PurchaseModel purchase) save,
    required TResult Function(PurchaseModel purchase) delete,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PurchaseModel purchase)? save,
    TResult? Function(PurchaseModel purchase)? delete,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PurchaseModel purchase)? save,
    TResult Function(PurchaseModel purchase)? delete,
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
    required TResult Function(PurchaseInitialEvent value) init,
    required TResult Function(PurchaseSaveEvent value) save,
    required TResult Function(PurchaseDeleteEvent value) delete,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialEvent value)? init,
    TResult? Function(PurchaseSaveEvent value)? save,
    TResult? Function(PurchaseDeleteEvent value)? delete,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialEvent value)? init,
    TResult Function(PurchaseSaveEvent value)? save,
    TResult Function(PurchaseDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class PurchaseInitialEvent implements PurchaseEvent {
  const factory PurchaseInitialEvent() = _$PurchaseInitialEventImpl;
}

/// @nodoc
abstract class _$$PurchaseSaveEventImplCopyWith<$Res> {
  factory _$$PurchaseSaveEventImplCopyWith(_$PurchaseSaveEventImpl value,
          $Res Function(_$PurchaseSaveEventImpl) then) =
      __$$PurchaseSaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseModel purchase});
}

/// @nodoc
class __$$PurchaseSaveEventImplCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res, _$PurchaseSaveEventImpl>
    implements _$$PurchaseSaveEventImplCopyWith<$Res> {
  __$$PurchaseSaveEventImplCopyWithImpl(_$PurchaseSaveEventImpl _value,
      $Res Function(_$PurchaseSaveEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchase = null,
  }) {
    return _then(_$PurchaseSaveEventImpl(
      null == purchase
          ? _value.purchase
          : purchase // ignore: cast_nullable_to_non_nullable
              as PurchaseModel,
    ));
  }
}

/// @nodoc

class _$PurchaseSaveEventImpl implements PurchaseSaveEvent {
  const _$PurchaseSaveEventImpl(this.purchase);

  @override
  final PurchaseModel purchase;

  @override
  String toString() {
    return 'PurchaseEvent.save(purchase: $purchase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseSaveEventImpl &&
            (identical(other.purchase, purchase) ||
                other.purchase == purchase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseSaveEventImplCopyWith<_$PurchaseSaveEventImpl> get copyWith =>
      __$$PurchaseSaveEventImplCopyWithImpl<_$PurchaseSaveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PurchaseModel purchase) save,
    required TResult Function(PurchaseModel purchase) delete,
  }) {
    return save(purchase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PurchaseModel purchase)? save,
    TResult? Function(PurchaseModel purchase)? delete,
  }) {
    return save?.call(purchase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PurchaseModel purchase)? save,
    TResult Function(PurchaseModel purchase)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(purchase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitialEvent value) init,
    required TResult Function(PurchaseSaveEvent value) save,
    required TResult Function(PurchaseDeleteEvent value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialEvent value)? init,
    TResult? Function(PurchaseSaveEvent value)? save,
    TResult? Function(PurchaseDeleteEvent value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialEvent value)? init,
    TResult Function(PurchaseSaveEvent value)? save,
    TResult Function(PurchaseDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class PurchaseSaveEvent implements PurchaseEvent {
  const factory PurchaseSaveEvent(final PurchaseModel purchase) =
      _$PurchaseSaveEventImpl;

  PurchaseModel get purchase;
  @JsonKey(ignore: true)
  _$$PurchaseSaveEventImplCopyWith<_$PurchaseSaveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PurchaseDeleteEventImplCopyWith<$Res> {
  factory _$$PurchaseDeleteEventImplCopyWith(_$PurchaseDeleteEventImpl value,
          $Res Function(_$PurchaseDeleteEventImpl) then) =
      __$$PurchaseDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PurchaseModel purchase});
}

/// @nodoc
class __$$PurchaseDeleteEventImplCopyWithImpl<$Res>
    extends _$PurchaseEventCopyWithImpl<$Res, _$PurchaseDeleteEventImpl>
    implements _$$PurchaseDeleteEventImplCopyWith<$Res> {
  __$$PurchaseDeleteEventImplCopyWithImpl(_$PurchaseDeleteEventImpl _value,
      $Res Function(_$PurchaseDeleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchase = null,
  }) {
    return _then(_$PurchaseDeleteEventImpl(
      null == purchase
          ? _value.purchase
          : purchase // ignore: cast_nullable_to_non_nullable
              as PurchaseModel,
    ));
  }
}

/// @nodoc

class _$PurchaseDeleteEventImpl implements PurchaseDeleteEvent {
  const _$PurchaseDeleteEventImpl(this.purchase);

  @override
  final PurchaseModel purchase;

  @override
  String toString() {
    return 'PurchaseEvent.delete(purchase: $purchase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseDeleteEventImpl &&
            (identical(other.purchase, purchase) ||
                other.purchase == purchase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseDeleteEventImplCopyWith<_$PurchaseDeleteEventImpl> get copyWith =>
      __$$PurchaseDeleteEventImplCopyWithImpl<_$PurchaseDeleteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(PurchaseModel purchase) save,
    required TResult Function(PurchaseModel purchase) delete,
  }) {
    return delete(purchase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(PurchaseModel purchase)? save,
    TResult? Function(PurchaseModel purchase)? delete,
  }) {
    return delete?.call(purchase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(PurchaseModel purchase)? save,
    TResult Function(PurchaseModel purchase)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(purchase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PurchaseInitialEvent value) init,
    required TResult Function(PurchaseSaveEvent value) save,
    required TResult Function(PurchaseDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PurchaseInitialEvent value)? init,
    TResult? Function(PurchaseSaveEvent value)? save,
    TResult? Function(PurchaseDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PurchaseInitialEvent value)? init,
    TResult Function(PurchaseSaveEvent value)? save,
    TResult Function(PurchaseDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class PurchaseDeleteEvent implements PurchaseEvent {
  const factory PurchaseDeleteEvent(final PurchaseModel purchase) =
      _$PurchaseDeleteEventImpl;

  PurchaseModel get purchase;
  @JsonKey(ignore: true)
  _$$PurchaseDeleteEventImplCopyWith<_$PurchaseDeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
