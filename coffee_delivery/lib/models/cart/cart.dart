import 'package:coffee_delivery/models/card_item/cart_item.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';


@freezed
class Cart with _$Cart{
@JsonSerializable(explicitToJson: true , fieldRename: FieldRename.snake)
  const factory Cart({
  required final int id,
  required List<CartItem> items,
  required double total,
})= _Cart;

factory Cart.fromJson(Map<String, Object?>json)=>_$CartFromJson(json);
}