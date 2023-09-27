// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItem _$$_CartItemFromJson(Map<String, dynamic> json) => _$_CartItem(
      i: json['i'] as int,
      quantity: json['quantity'] as int,
      total: (json['total'] as num).toDouble(),
      cofee: CoffeeModel.fromJson(json['cofee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartItemToJson(_$_CartItem instance) =>
    <String, dynamic>{
      'i': instance.i,
      'quantity': instance.quantity,
      'total': instance.total,
      'cofee': instance.cofee.toJson(),
    };
