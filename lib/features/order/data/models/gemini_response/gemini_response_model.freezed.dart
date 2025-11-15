// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeminiResponse {

 List<GeminiCandidate> get candidates;
/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeminiResponseCopyWith<GeminiResponse> get copyWith => _$GeminiResponseCopyWithImpl<GeminiResponse>(this as GeminiResponse, _$identity);

  /// Serializes this GeminiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeminiResponse&&const DeepCollectionEquality().equals(other.candidates, candidates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(candidates));

@override
String toString() {
  return 'GeminiResponse(candidates: $candidates)';
}


}

/// @nodoc
abstract mixin class $GeminiResponseCopyWith<$Res>  {
  factory $GeminiResponseCopyWith(GeminiResponse value, $Res Function(GeminiResponse) _then) = _$GeminiResponseCopyWithImpl;
@useResult
$Res call({
 List<GeminiCandidate> candidates
});




}
/// @nodoc
class _$GeminiResponseCopyWithImpl<$Res>
    implements $GeminiResponseCopyWith<$Res> {
  _$GeminiResponseCopyWithImpl(this._self, this._then);

  final GeminiResponse _self;
  final $Res Function(GeminiResponse) _then;

/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? candidates = null,}) {
  return _then(_self.copyWith(
candidates: null == candidates ? _self.candidates : candidates // ignore: cast_nullable_to_non_nullable
as List<GeminiCandidate>,
  ));
}

}


/// Adds pattern-matching-related methods to [GeminiResponse].
extension GeminiResponsePatterns on GeminiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeminiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeminiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeminiResponse value)  $default,){
final _that = this;
switch (_that) {
case _GeminiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeminiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GeminiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GeminiCandidate> candidates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeminiResponse() when $default != null:
return $default(_that.candidates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GeminiCandidate> candidates)  $default,) {final _that = this;
switch (_that) {
case _GeminiResponse():
return $default(_that.candidates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GeminiCandidate> candidates)?  $default,) {final _that = this;
switch (_that) {
case _GeminiResponse() when $default != null:
return $default(_that.candidates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeminiResponse implements GeminiResponse {
  const _GeminiResponse({required final  List<GeminiCandidate> candidates}): _candidates = candidates;
  factory _GeminiResponse.fromJson(Map<String, dynamic> json) => _$GeminiResponseFromJson(json);

 final  List<GeminiCandidate> _candidates;
@override List<GeminiCandidate> get candidates {
  if (_candidates is EqualUnmodifiableListView) return _candidates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_candidates);
}


/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeminiResponseCopyWith<_GeminiResponse> get copyWith => __$GeminiResponseCopyWithImpl<_GeminiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeminiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeminiResponse&&const DeepCollectionEquality().equals(other._candidates, _candidates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_candidates));

@override
String toString() {
  return 'GeminiResponse(candidates: $candidates)';
}


}

/// @nodoc
abstract mixin class _$GeminiResponseCopyWith<$Res> implements $GeminiResponseCopyWith<$Res> {
  factory _$GeminiResponseCopyWith(_GeminiResponse value, $Res Function(_GeminiResponse) _then) = __$GeminiResponseCopyWithImpl;
@override @useResult
$Res call({
 List<GeminiCandidate> candidates
});




}
/// @nodoc
class __$GeminiResponseCopyWithImpl<$Res>
    implements _$GeminiResponseCopyWith<$Res> {
  __$GeminiResponseCopyWithImpl(this._self, this._then);

  final _GeminiResponse _self;
  final $Res Function(_GeminiResponse) _then;

/// Create a copy of GeminiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? candidates = null,}) {
  return _then(_GeminiResponse(
candidates: null == candidates ? _self._candidates : candidates // ignore: cast_nullable_to_non_nullable
as List<GeminiCandidate>,
  ));
}


}


/// @nodoc
mixin _$GeminiCandidate {

 GeminiContent get content;
/// Create a copy of GeminiCandidate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeminiCandidateCopyWith<GeminiCandidate> get copyWith => _$GeminiCandidateCopyWithImpl<GeminiCandidate>(this as GeminiCandidate, _$identity);

  /// Serializes this GeminiCandidate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeminiCandidate&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content);

@override
String toString() {
  return 'GeminiCandidate(content: $content)';
}


}

/// @nodoc
abstract mixin class $GeminiCandidateCopyWith<$Res>  {
  factory $GeminiCandidateCopyWith(GeminiCandidate value, $Res Function(GeminiCandidate) _then) = _$GeminiCandidateCopyWithImpl;
@useResult
$Res call({
 GeminiContent content
});


$GeminiContentCopyWith<$Res> get content;

}
/// @nodoc
class _$GeminiCandidateCopyWithImpl<$Res>
    implements $GeminiCandidateCopyWith<$Res> {
  _$GeminiCandidateCopyWithImpl(this._self, this._then);

  final GeminiCandidate _self;
  final $Res Function(GeminiCandidate) _then;

/// Create a copy of GeminiCandidate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as GeminiContent,
  ));
}
/// Create a copy of GeminiCandidate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeminiContentCopyWith<$Res> get content {
  
  return $GeminiContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeminiCandidate].
extension GeminiCandidatePatterns on GeminiCandidate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeminiCandidate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeminiCandidate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeminiCandidate value)  $default,){
final _that = this;
switch (_that) {
case _GeminiCandidate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeminiCandidate value)?  $default,){
final _that = this;
switch (_that) {
case _GeminiCandidate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GeminiContent content)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeminiCandidate() when $default != null:
return $default(_that.content);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GeminiContent content)  $default,) {final _that = this;
switch (_that) {
case _GeminiCandidate():
return $default(_that.content);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GeminiContent content)?  $default,) {final _that = this;
switch (_that) {
case _GeminiCandidate() when $default != null:
return $default(_that.content);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeminiCandidate implements GeminiCandidate {
  const _GeminiCandidate({required this.content});
  factory _GeminiCandidate.fromJson(Map<String, dynamic> json) => _$GeminiCandidateFromJson(json);

@override final  GeminiContent content;

/// Create a copy of GeminiCandidate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeminiCandidateCopyWith<_GeminiCandidate> get copyWith => __$GeminiCandidateCopyWithImpl<_GeminiCandidate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeminiCandidateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeminiCandidate&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,content);

@override
String toString() {
  return 'GeminiCandidate(content: $content)';
}


}

/// @nodoc
abstract mixin class _$GeminiCandidateCopyWith<$Res> implements $GeminiCandidateCopyWith<$Res> {
  factory _$GeminiCandidateCopyWith(_GeminiCandidate value, $Res Function(_GeminiCandidate) _then) = __$GeminiCandidateCopyWithImpl;
@override @useResult
$Res call({
 GeminiContent content
});


@override $GeminiContentCopyWith<$Res> get content;

}
/// @nodoc
class __$GeminiCandidateCopyWithImpl<$Res>
    implements _$GeminiCandidateCopyWith<$Res> {
  __$GeminiCandidateCopyWithImpl(this._self, this._then);

  final _GeminiCandidate _self;
  final $Res Function(_GeminiCandidate) _then;

/// Create a copy of GeminiCandidate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,}) {
  return _then(_GeminiCandidate(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as GeminiContent,
  ));
}

/// Create a copy of GeminiCandidate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeminiContentCopyWith<$Res> get content {
  
  return $GeminiContentCopyWith<$Res>(_self.content, (value) {
    return _then(_self.copyWith(content: value));
  });
}
}


/// @nodoc
mixin _$GeminiContent {

 List<GeminiPart> get parts;
/// Create a copy of GeminiContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeminiContentCopyWith<GeminiContent> get copyWith => _$GeminiContentCopyWithImpl<GeminiContent>(this as GeminiContent, _$identity);

  /// Serializes this GeminiContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeminiContent&&const DeepCollectionEquality().equals(other.parts, parts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(parts));

@override
String toString() {
  return 'GeminiContent(parts: $parts)';
}


}

/// @nodoc
abstract mixin class $GeminiContentCopyWith<$Res>  {
  factory $GeminiContentCopyWith(GeminiContent value, $Res Function(GeminiContent) _then) = _$GeminiContentCopyWithImpl;
@useResult
$Res call({
 List<GeminiPart> parts
});




}
/// @nodoc
class _$GeminiContentCopyWithImpl<$Res>
    implements $GeminiContentCopyWith<$Res> {
  _$GeminiContentCopyWithImpl(this._self, this._then);

  final GeminiContent _self;
  final $Res Function(GeminiContent) _then;

/// Create a copy of GeminiContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parts = null,}) {
  return _then(_self.copyWith(
parts: null == parts ? _self.parts : parts // ignore: cast_nullable_to_non_nullable
as List<GeminiPart>,
  ));
}

}


/// Adds pattern-matching-related methods to [GeminiContent].
extension GeminiContentPatterns on GeminiContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeminiContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeminiContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeminiContent value)  $default,){
final _that = this;
switch (_that) {
case _GeminiContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeminiContent value)?  $default,){
final _that = this;
switch (_that) {
case _GeminiContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GeminiPart> parts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeminiContent() when $default != null:
return $default(_that.parts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GeminiPart> parts)  $default,) {final _that = this;
switch (_that) {
case _GeminiContent():
return $default(_that.parts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GeminiPart> parts)?  $default,) {final _that = this;
switch (_that) {
case _GeminiContent() when $default != null:
return $default(_that.parts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeminiContent implements GeminiContent {
  const _GeminiContent({required final  List<GeminiPart> parts}): _parts = parts;
  factory _GeminiContent.fromJson(Map<String, dynamic> json) => _$GeminiContentFromJson(json);

 final  List<GeminiPart> _parts;
@override List<GeminiPart> get parts {
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parts);
}


/// Create a copy of GeminiContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeminiContentCopyWith<_GeminiContent> get copyWith => __$GeminiContentCopyWithImpl<_GeminiContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeminiContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeminiContent&&const DeepCollectionEquality().equals(other._parts, _parts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parts));

@override
String toString() {
  return 'GeminiContent(parts: $parts)';
}


}

/// @nodoc
abstract mixin class _$GeminiContentCopyWith<$Res> implements $GeminiContentCopyWith<$Res> {
  factory _$GeminiContentCopyWith(_GeminiContent value, $Res Function(_GeminiContent) _then) = __$GeminiContentCopyWithImpl;
@override @useResult
$Res call({
 List<GeminiPart> parts
});




}
/// @nodoc
class __$GeminiContentCopyWithImpl<$Res>
    implements _$GeminiContentCopyWith<$Res> {
  __$GeminiContentCopyWithImpl(this._self, this._then);

  final _GeminiContent _self;
  final $Res Function(_GeminiContent) _then;

/// Create a copy of GeminiContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parts = null,}) {
  return _then(_GeminiContent(
parts: null == parts ? _self._parts : parts // ignore: cast_nullable_to_non_nullable
as List<GeminiPart>,
  ));
}


}


/// @nodoc
mixin _$GeminiPart {

 String get text;
/// Create a copy of GeminiPart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeminiPartCopyWith<GeminiPart> get copyWith => _$GeminiPartCopyWithImpl<GeminiPart>(this as GeminiPart, _$identity);

  /// Serializes this GeminiPart to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeminiPart&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'GeminiPart(text: $text)';
}


}

/// @nodoc
abstract mixin class $GeminiPartCopyWith<$Res>  {
  factory $GeminiPartCopyWith(GeminiPart value, $Res Function(GeminiPart) _then) = _$GeminiPartCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$GeminiPartCopyWithImpl<$Res>
    implements $GeminiPartCopyWith<$Res> {
  _$GeminiPartCopyWithImpl(this._self, this._then);

  final GeminiPart _self;
  final $Res Function(GeminiPart) _then;

/// Create a copy of GeminiPart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GeminiPart].
extension GeminiPartPatterns on GeminiPart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeminiPart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeminiPart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeminiPart value)  $default,){
final _that = this;
switch (_that) {
case _GeminiPart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeminiPart value)?  $default,){
final _that = this;
switch (_that) {
case _GeminiPart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeminiPart() when $default != null:
return $default(_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text)  $default,) {final _that = this;
switch (_that) {
case _GeminiPart():
return $default(_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text)?  $default,) {final _that = this;
switch (_that) {
case _GeminiPart() when $default != null:
return $default(_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeminiPart implements GeminiPart {
  const _GeminiPart({required this.text});
  factory _GeminiPart.fromJson(Map<String, dynamic> json) => _$GeminiPartFromJson(json);

@override final  String text;

/// Create a copy of GeminiPart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeminiPartCopyWith<_GeminiPart> get copyWith => __$GeminiPartCopyWithImpl<_GeminiPart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeminiPartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeminiPart&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'GeminiPart(text: $text)';
}


}

/// @nodoc
abstract mixin class _$GeminiPartCopyWith<$Res> implements $GeminiPartCopyWith<$Res> {
  factory _$GeminiPartCopyWith(_GeminiPart value, $Res Function(_GeminiPart) _then) = __$GeminiPartCopyWithImpl;
@override @useResult
$Res call({
 String text
});




}
/// @nodoc
class __$GeminiPartCopyWithImpl<$Res>
    implements _$GeminiPartCopyWith<$Res> {
  __$GeminiPartCopyWithImpl(this._self, this._then);

  final _GeminiPart _self;
  final $Res Function(_GeminiPart) _then;

/// Create a copy of GeminiPart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_GeminiPart(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
