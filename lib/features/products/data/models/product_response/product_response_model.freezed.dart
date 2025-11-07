// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsResponse {

 List<Product> get products; int? get total; int? get skip; int? get limit;
/// Create a copy of ProductsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsResponseCopyWith<ProductsResponse> get copyWith => _$ProductsResponseCopyWithImpl<ProductsResponse>(this as ProductsResponse, _$identity);

  /// Serializes this ProductsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsResponse&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),total,skip,limit);

@override
String toString() {
  return 'ProductsResponse(products: $products, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $ProductsResponseCopyWith<$Res>  {
  factory $ProductsResponseCopyWith(ProductsResponse value, $Res Function(ProductsResponse) _then) = _$ProductsResponseCopyWithImpl;
@useResult
$Res call({
 List<Product> products, int? total, int? skip, int? limit
});




}
/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._self, this._then);

  final ProductsResponse _self;
  final $Res Function(ProductsResponse) _then;

/// Create a copy of ProductsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? total = freezed,Object? skip = freezed,Object? limit = freezed,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,skip: freezed == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsResponse].
extension ProductsResponsePatterns on ProductsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Product> products,  int? total,  int? skip,  int? limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsResponse() when $default != null:
return $default(_that.products,_that.total,_that.skip,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Product> products,  int? total,  int? skip,  int? limit)  $default,) {final _that = this;
switch (_that) {
case _ProductsResponse():
return $default(_that.products,_that.total,_that.skip,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Product> products,  int? total,  int? skip,  int? limit)?  $default,) {final _that = this;
switch (_that) {
case _ProductsResponse() when $default != null:
return $default(_that.products,_that.total,_that.skip,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsResponse implements ProductsResponse {
  const _ProductsResponse({required final  List<Product> products, this.total, this.skip, this.limit}): _products = products;
  factory _ProductsResponse.fromJson(Map<String, dynamic> json) => _$ProductsResponseFromJson(json);

 final  List<Product> _products;
@override List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  int? total;
@override final  int? skip;
@override final  int? limit;

/// Create a copy of ProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsResponseCopyWith<_ProductsResponse> get copyWith => __$ProductsResponseCopyWithImpl<_ProductsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsResponse&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),total,skip,limit);

@override
String toString() {
  return 'ProductsResponse(products: $products, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$ProductsResponseCopyWith<$Res> implements $ProductsResponseCopyWith<$Res> {
  factory _$ProductsResponseCopyWith(_ProductsResponse value, $Res Function(_ProductsResponse) _then) = __$ProductsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Product> products, int? total, int? skip, int? limit
});




}
/// @nodoc
class __$ProductsResponseCopyWithImpl<$Res>
    implements _$ProductsResponseCopyWith<$Res> {
  __$ProductsResponseCopyWithImpl(this._self, this._then);

  final _ProductsResponse _self;
  final $Res Function(_ProductsResponse) _then;

/// Create a copy of ProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? total = freezed,Object? skip = freezed,Object? limit = freezed,}) {
  return _then(_ProductsResponse(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,skip: freezed == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
