import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee.freezed.dart';
part 'coffee.g.dart';

@freezed
class CoffeeModel with _$CoffeeModel{
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory CoffeeModel({
    required int id,
    required String name,
    required String decription,
    required String price,
    required String image,
})= _CoffeeModel;

  factory CoffeeModel.fromJson(Map<String, Object?> json)=> _$CoffeeModelFromJson(json);
}