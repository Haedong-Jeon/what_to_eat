// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreModel _$$_StoreModelFromJson(Map<String, dynamic> json) =>
    _$_StoreModel(
      addr: json['addr'] as String? ?? "",
      delivery: json['delivery'] as bool? ?? false,
      visit: json['visit'] as bool? ?? false,
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      foodType: $enumDecodeNullable(_$FoodTypeEnumMap, json['foodType']) ??
          FoodType.korean,
      from: $enumDecodeNullable(_$DataFromEnumMap, json['from']) ??
          DataFrom.MEAL_TICKET_CAPTAIN,
    );

Map<String, dynamic> _$$_StoreModelToJson(_$_StoreModel instance) =>
    <String, dynamic>{
      'addr': instance.addr,
      'delivery': instance.delivery,
      'visit': instance.visit,
      'id': instance.id,
      'name': instance.name,
      'foodType': _$FoodTypeEnumMap[instance.foodType]!,
      'from': _$DataFromEnumMap[instance.from]!,
    };

const _$FoodTypeEnumMap = {
  FoodType.korean: 'korean',
  FoodType.chinese: 'chinese',
  FoodType.japanese: 'japanese',
  FoodType.cafe: 'cafe',
  FoodType.western: 'western',
};

const _$DataFromEnumMap = {
  DataFrom.MEAL_TICKET_CAPTAIN: 'MEAL_TICKET_CAPTAIN',
  DataFrom.OTHER: 'OTHER',
};
