import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:what_to_eat/const/enum/data_from.dart';
import 'package:what_to_eat/const/enum/food_type.dart';
import 'package:what_to_eat/const/enum/food_type.dart';

part 'store_model.freezed.dart';

part 'store_model.g.dart';

@freezed
class StoreModel with _$StoreModel {
  factory StoreModel({
    @Default("") String addr,
    @Default(false) bool delivery,
    @Default(false) bool visit,
    @Default(0) int id,
    @Default("") String name,
    @Default(FoodType.korean) FoodType foodType,
    @Default(DataFrom.MEAL_TICKET_CAPTAIN) DataFrom from,

  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) => _$StoreModelFromJson(json);
}