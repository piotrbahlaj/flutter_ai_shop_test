// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeminiResponse _$GeminiResponseFromJson(Map<String, dynamic> json) =>
    _GeminiResponse(
      candidates: (json['candidates'] as List<dynamic>)
          .map((e) => GeminiCandidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeminiResponseToJson(_GeminiResponse instance) =>
    <String, dynamic>{'candidates': instance.candidates};

_GeminiCandidate _$GeminiCandidateFromJson(Map<String, dynamic> json) =>
    _GeminiCandidate(
      content: GeminiContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeminiCandidateToJson(_GeminiCandidate instance) =>
    <String, dynamic>{'content': instance.content};

_GeminiContent _$GeminiContentFromJson(Map<String, dynamic> json) =>
    _GeminiContent(
      parts: (json['parts'] as List<dynamic>)
          .map((e) => GeminiPart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeminiContentToJson(_GeminiContent instance) =>
    <String, dynamic>{'parts': instance.parts};

_GeminiPart _$GeminiPartFromJson(Map<String, dynamic> json) =>
    _GeminiPart(text: json['text'] as String);

Map<String, dynamic> _$GeminiPartToJson(_GeminiPart instance) =>
    <String, dynamic>{'text': instance.text};
