// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ordered_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderedProduct {

 int get id; String get title; double get price; int get quantity; bool get isFound;
/// Create a copy of OrderedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderedProductCopyWith<OrderedProduct> get copyWith => _$OrderedProductCopyWithImpl<OrderedProduct>(this as OrderedProduct, _$identity);

  /// Serializes this OrderedProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderedProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isFound, isFound) || other.isFound == isFound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,quantity,isFound);

@override
String toString() {
  return 'OrderedProduct(id: $id, title: $title, price: $price, quantity: $quantity, isFound: $isFound)';
}


}

/// @nodoc
abstract mixin class $OrderedProductCopyWith<$Res>  {
  factory $OrderedProductCopyWith(OrderedProduct value, $Res Function(OrderedProduct) _then) = _$OrderedProductCopyWithImpl;
@useResult
$Res call({
 int id, String title, double price, int quantity, bool isFound
});




}
/// @nodoc
class _$OrderedProductCopyWithImpl<$Res>
    implements $OrderedProductCopyWith<$Res> {
  _$OrderedProductCopyWithImpl(this._self, this._then);

  final OrderedProduct _self;
  final $Res Function(OrderedProduct) _then;

/// Create a copy of OrderedProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = null,Object? quantity = null,Object? isFound = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isFound: null == isFound ? _self.isFound : isFound // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderedProduct].
extension OrderedProductPatterns on OrderedProduct {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderedProduct() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderedProduct value)  $default,){
final _that = this;
switch (_that) {
case _OrderedProduct():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _OrderedProduct() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  double price,  int quantity,  bool isFound)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderedProduct() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.quantity,_that.isFound);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  double price,  int quantity,  bool isFound)  $default,) {final _that = this;
switch (_that) {
case _OrderedProduct():
return $default(_that.id,_that.title,_that.price,_that.quantity,_that.isFound);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  double price,  int quantity,  bool isFound)?  $default,) {final _that = this;
switch (_that) {
case _OrderedProduct() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.quantity,_that.isFound);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderedProduct extends OrderedProduct {
  const _OrderedProduct({required this.id, required this.title, required this.price, required this.quantity, required this.isFound}): super._();
  factory _OrderedProduct.fromJson(Map<String, dynamic> json) => _$OrderedProductFromJson(json);

@override final  int id;
@override final  String title;
@override final  double price;
@override final  int quantity;
@override final  bool isFound;

/// Create a copy of OrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderedProductCopyWith<_OrderedProduct> get copyWith => __$OrderedProductCopyWithImpl<_OrderedProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderedProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderedProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isFound, isFound) || other.isFound == isFound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,quantity,isFound);

@override
String toString() {
  return 'OrderedProduct(id: $id, title: $title, price: $price, quantity: $quantity, isFound: $isFound)';
}


}

/// @nodoc
abstract mixin class _$OrderedProductCopyWith<$Res> implements $OrderedProductCopyWith<$Res> {
  factory _$OrderedProductCopyWith(_OrderedProduct value, $Res Function(_OrderedProduct) _then) = __$OrderedProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, double price, int quantity, bool isFound
});




}
/// @nodoc
class __$OrderedProductCopyWithImpl<$Res>
    implements _$OrderedProductCopyWith<$Res> {
  __$OrderedProductCopyWithImpl(this._self, this._then);

  final _OrderedProduct _self;
  final $Res Function(_OrderedProduct) _then;

/// Create a copy of OrderedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,Object? quantity = null,Object? isFound = null,}) {
  return _then(_OrderedProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isFound: null == isFound ? _self.isFound : isFound // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
