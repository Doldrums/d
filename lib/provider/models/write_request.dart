import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_request.freezed.dart';
part 'write_request.g.dart';


@freezed
class WriteRequest with _$WriteRequest {
  const factory WriteRequest({
    required String name,
    required String device,
    required String message,
  }) = _WriteRequest;

  factory WriteRequest.fromJson(Map<String, Object?> json)
  => _$WriteRequestFromJson(json);
}