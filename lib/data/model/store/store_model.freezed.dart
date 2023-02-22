// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) {
  return _StoreModel.fromJson(json);
}

/// @nodoc
mixin _$StoreModel {
  String get addr => throw _privateConstructorUsedError;
  bool get delivery => throw _privateConstructorUsedError;
  bool get visit => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  FoodType get foodType => throw _privateConstructorUsedError;
  DataFrom get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreModelCopyWith<StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreModelCopyWith<$Res> {
  factory $StoreModelCopyWith(
          StoreModel value, $Res Function(StoreModel) then) =
      _$StoreModelCopyWithImpl<$Res, StoreModel>;
  @useResult
  $Res call(
      {String addr,
      bool delivery,
      bool visit,
      int id,
      String name,
      FoodType foodType,
      DataFrom from});
}

/// @nodoc
class _$StoreModelCopyWithImpl<$Res, $Val extends StoreModel>
    implements $StoreModelCopyWith<$Res> {
  _$StoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr = null,
    Object? delivery = null,
    Object? visit = null,
    Object? id = null,
    Object? name = null,
    Object? foodType = null,
    Object? from = null,
  }) {
    return _then(_value.copyWith(
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as bool,
      visit: null == visit
          ? _value.visit
          : visit // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodType: null == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DataFrom,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreModelCopyWith<$Res>
    implements $StoreModelCopyWith<$Res> {
  factory _$$_StoreModelCopyWith(
          _$_StoreModel value, $Res Function(_$_StoreModel) then) =
      __$$_StoreModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String addr,
      bool delivery,
      bool visit,
      int id,
      String name,
      FoodType foodType,
      DataFrom from});
}

/// @nodoc
class __$$_StoreModelCopyWithImpl<$Res>
    extends _$StoreModelCopyWithImpl<$Res, _$_StoreModel>
    implements _$$_StoreModelCopyWith<$Res> {
  __$$_StoreModelCopyWithImpl(
      _$_StoreModel _value, $Res Function(_$_StoreModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr = null,
    Object? delivery = null,
    Object? visit = null,
    Object? id = null,
    Object? name = null,
    Object? foodType = null,
    Object? from = null,
  }) {
    return _then(_$_StoreModel(
      addr: null == addr
          ? _value.addr
          : addr // ignore: cast_nullable_to_non_nullable
              as String,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as bool,
      visit: null == visit
          ? _value.visit
          : visit // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      foodType: null == foodType
          ? _value.foodType
          : foodType // ignore: cast_nullable_to_non_nullable
              as FoodType,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DataFrom,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreModel implements _StoreModel {
  _$_StoreModel(
      {this.addr = "",
      this.delivery = false,
      this.visit = false,
      this.id = 0,
      this.name = "",
      this.foodType = FoodType.korean,
      this.from = DataFrom.MEAL_TICKET_CAPTAIN});

  factory _$_StoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_StoreModelFromJson(json);

  @override
  @JsonKey()
  final String addr;
  @override
  @JsonKey()
  final bool delivery;
  @override
  @JsonKey()
  final bool visit;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final FoodType foodType;
  @override
  @JsonKey()
  final DataFrom from;

  @override
  String toString() {
    return 'StoreModel(addr: $addr, delivery: $delivery, visit: $visit, id: $id, name: $name, foodType: $foodType, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoreModel &&
            (identical(other.addr, addr) || other.addr == addr) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.visit, visit) || other.visit == visit) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.foodType, foodType) ||
                other.foodType == foodType) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, addr, delivery, visit, id, name, foodType, from);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreModelCopyWith<_$_StoreModel> get copyWith =>
      __$$_StoreModelCopyWithImpl<_$_StoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreModelToJson(
      this,
    );
  }
}

abstract class _StoreModel implements StoreModel {
  factory _StoreModel(
      {final String addr,
      final bool delivery,
      final bool visit,
      final int id,
      final String name,
      final FoodType foodType,
      final DataFrom from}) = _$_StoreModel;

  factory _StoreModel.fromJson(Map<String, dynamic> json) =
      _$_StoreModel.fromJson;

  @override
  String get addr;
  @override
  bool get delivery;
  @override
  bool get visit;
  @override
  int get id;
  @override
  String get name;
  @override
  FoodType get foodType;
  @override
  DataFrom get from;
  @override
  @JsonKey(ignore: true)
  _$$_StoreModelCopyWith<_$_StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
