import 'package:coffee_delivery/models/coffee_models/coffee.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem{
  @JsonSerializable(explicitToJson: true ,fieldRename: FieldRename.snake)
  const factory CartItem({
   required final int i,
   required int quantity,
   required double total,
   required CoffeeModel cofee,
})= _CartItem;


  factory CartItem.fromJson(Map<String , Object?>json)=> _$CartItemFromJson(json);
}