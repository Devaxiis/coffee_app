// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoffeeModel _$$_CoffeeModelFromJson(Map<String, dynamic> json) =>
    _$_CoffeeModel(
      id: json['id'] as int,
      name: json['name'] as String,
      decription: json['decription'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_CoffeeModelToJson(_$_CoffeeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'decription': instance.decription,
      'price': instance.price,
      'image': instance.image,
    };
