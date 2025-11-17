// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsEvent()';
}


}

/// @nodoc
class $ProductsEventCopyWith<$Res>  {
$ProductsEventCopyWith(ProductsEvent _, $Res Function(ProductsEvent) __);
}


/// Adds pattern-matching-related methods to [ProductsEvent].
extension ProductsEventPatterns on ProductsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchProductsEvent value)?  fetchProducts,TResult Function( SearchEvent value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchProductsEvent() when fetchProducts != null:
return fetchProducts(_that);case SearchEvent() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchProductsEvent value)  fetchProducts,required TResult Function( SearchEvent value)  search,}){
final _that = this;
switch (_that) {
case FetchProductsEvent():
return fetchProducts(_that);case SearchEvent():
return search(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchProductsEvent value)?  fetchProducts,TResult? Function( SearchEvent value)?  search,}){
final _that = this;
switch (_that) {
case FetchProductsEvent() when fetchProducts != null:
return fetchProducts(_that);case SearchEvent() when search != null:
return search(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchProducts,TResult Function( String query)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchProductsEvent() when fetchProducts != null:
return fetchProducts();case SearchEvent() when search != null:
return search(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchProducts,required TResult Function( String query)  search,}) {final _that = this;
switch (_that) {
case FetchProductsEvent():
return fetchProducts();case SearchEvent():
return search(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchProducts,TResult? Function( String query)?  search,}) {final _that = this;
switch (_that) {
case FetchProductsEvent() when fetchProducts != null:
return fetchProducts();case SearchEvent() when search != null:
return search(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class FetchProductsEvent implements ProductsEvent {
  const FetchProductsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsEvent.fetchProducts()';
}


}




/// @nodoc


class SearchEvent implements ProductsEvent {
  const SearchEvent(this.query);
  

 final  String query;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchEventCopyWith<SearchEvent> get copyWith => _$SearchEventCopyWithImpl<SearchEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ProductsEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchEventCopyWith<$Res> implements $ProductsEventCopyWith<$Res> {
  factory $SearchEventCopyWith(SearchEvent value, $Res Function(SearchEvent) _then) = _$SearchEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchEventCopyWithImpl<$Res>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._self, this._then);

  final SearchEvent _self;
  final $Res Function(SearchEvent) _then;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProductsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState()';
}


}

/// @nodoc
class $ProductsStateCopyWith<$Res>  {
$ProductsStateCopyWith(ProductsState _, $Res Function(ProductsState) __);
}


/// Adds pattern-matching-related methods to [ProductsState].
extension ProductsStatePatterns on ProductsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Product> allProducts,  List<Product> displayedProducts,  String searchQuery)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.allProducts,_that.displayedProducts,_that.searchQuery);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Product> allProducts,  List<Product> displayedProducts,  String searchQuery)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.allProducts,_that.displayedProducts,_that.searchQuery);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Product> allProducts,  List<Product> displayedProducts,  String searchQuery)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.allProducts,_that.displayedProducts,_that.searchQuery);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements ProductsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState.loading()';
}


}




/// @nodoc


class _Loaded implements ProductsState {
  const _Loaded({required final  List<Product> allProducts, final  List<Product> displayedProducts = const [], this.searchQuery = ''}): _allProducts = allProducts,_displayedProducts = displayedProducts;
  

 final  List<Product> _allProducts;
 List<Product> get allProducts {
  if (_allProducts is EqualUnmodifiableListView) return _allProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allProducts);
}

 final  List<Product> _displayedProducts;
@JsonKey() List<Product> get displayedProducts {
  if (_displayedProducts is EqualUnmodifiableListView) return _displayedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_displayedProducts);
}

@JsonKey() final  String searchQuery;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._allProducts, _allProducts)&&const DeepCollectionEquality().equals(other._displayedProducts, _displayedProducts)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allProducts),const DeepCollectionEquality().hash(_displayedProducts),searchQuery);

@override
String toString() {
  return 'ProductsState.loaded(allProducts: $allProducts, displayedProducts: $displayedProducts, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<Product> allProducts, List<Product> displayedProducts, String searchQuery
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? allProducts = null,Object? displayedProducts = null,Object? searchQuery = null,}) {
  return _then(_Loaded(
allProducts: null == allProducts ? _self._allProducts : allProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,displayedProducts: null == displayedProducts ? _self._displayedProducts : displayedProducts // ignore: cast_nullable_to_non_nullable
as List<Product>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements ProductsState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
