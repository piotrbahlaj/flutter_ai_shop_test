import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_response_model.freezed.dart';
part 'gemini_response_model.g.dart';

@freezed
abstract class GeminiResponse with _$GeminiResponse {
  const factory GeminiResponse({required List<GeminiCandidate> candidates}) =
      _GeminiResponse;

  factory GeminiResponse.fromJson(Map<String, dynamic> json) =>
      _$GeminiResponseFromJson(json);
}

@freezed
abstract class GeminiCandidate with _$GeminiCandidate {
  const factory GeminiCandidate({required GeminiContent content}) =
      _GeminiCandidate;

  factory GeminiCandidate.fromJson(Map<String, dynamic> json) =>
      _$GeminiCandidateFromJson(json);
}

@freezed
abstract class GeminiContent with _$GeminiContent {
  const factory GeminiContent({required List<GeminiPart> parts}) =
      _GeminiContent;

  factory GeminiContent.fromJson(Map<String, dynamic> json) =>
      _$GeminiContentFromJson(json);
}

@freezed
abstract class GeminiPart with _$GeminiPart {
  const factory GeminiPart({required String text}) = _GeminiPart;

  factory GeminiPart.fromJson(Map<String, dynamic> json) =>
      _$GeminiPartFromJson(json);
}
