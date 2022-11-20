import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';


@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required String status,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, Object?> json)
  => _$ApiResponseFromJson(json);
}