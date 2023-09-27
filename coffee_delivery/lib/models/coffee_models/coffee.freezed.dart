// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoffeeModel _$CoffeeModelFromJson(Map<String, dynamic> json) {
  return _CoffeeModel.fromJson(json);
}

/// @nodoc
mixin _$CoffeeModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get decription => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoffeeModelCopyWith<CoffeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeModelCopyWith<$Res> {
  factory $CoffeeModelCopyWith(
          CoffeeModel value, $Res Function(CoffeeModel) then) =
      _$CoffeeModelCopyWithImpl<$Res, CoffeeModel>;
  @useResult
  $Res call(
      {int id, String name, String decription, String price, String image});
}

/// @nodoc
class _$CoffeeModelCopyWithImpl<$Res, $Val extends CoffeeModel>
    implements $CoffeeModelCopyWith<$Res> {
  _$CoffeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? decription = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decription: null == decription
          ? _value.decription
          : decription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoffeeModelCopyWith<$Res>
    implements $CoffeeModelCopyWith<$Res> {
  factory _$$_CoffeeModelCopyWith(
          _$_CoffeeModel value, $Res Function(_$_CoffeeModel) then) =
      __$$_CoffeeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String decription, String price, String image});
}

/// @nodoc
class __$$_CoffeeModelCopyWithImpl<$Res>
    extends _$CoffeeModelCopyWithImpl<$Res, _$_CoffeeModel>
    implements _$$_CoffeeModelCopyWith<$Res> {
  __$$_CoffeeModelCopyWithImpl(
      _$_CoffeeModel _value, $Res Function(_$_CoffeeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? decription = null,
    Object? price = null,
    Object? image = null,
  }) {
    return _then(_$_CoffeeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      decription: null == decription
          ? _value.decription
          : decription // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_CoffeeModel implements _CoffeeModel {
  const _$_CoffeeModel(
      {required this.id,
      required this.name,
      required this.decription,
      required this.price,
      required this.image});

  factory _$_CoffeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoffeeModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String decription;
  @override
  final String price;
  @override
  final String image;

  @override
  String toString() {
    return 'CoffeeModel(id: $id, name: $name, decription: $decription, price: $price, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.decription, decription) ||
                other.decription == decription) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, decription, price, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeModelCopyWith<_$_CoffeeModel> get copyWith =>
      __$$_CoffeeModelCopyWithImpl<_$_CoffeeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoffeeModelToJson(
      this,
    );
  }
}

abstract class _CoffeeModel implements CoffeeModel {
  const factory _CoffeeModel(
      {required final int id,
      required final String name,
      required final String decription,
      required final String price,
      required final String image}) = _$_CoffeeModel;

  factory _CoffeeModel.fromJson(Map<String, dynamic> json) =
      _$_CoffeeModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get decription;
  @override
  String get price;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeModelCopyWith<_$_CoffeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
