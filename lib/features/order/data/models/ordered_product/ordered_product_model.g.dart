// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ordered_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderedProduct _$OrderedProductFromJson(Map<String, dynamic> json) =>
    _OrderedProduct(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      price: (json['price'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      isFound: json['isFound'] as bool,
    );

Map<String, dynamic> _$OrderedProductToJson(_OrderedProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'quantity': instance.quantity,
      'isFound': instance.isFound,
    };
