import 'package:freezed_annotation/freezed_annotation.dart';

part 'connect_request.freezed.dart';
part 'connect_request.g.dart';


@freezed
class ConnectRequest with _$ConnectRequest {
  const factory ConnectRequest({
    required String name,
    required String device,
  }) = _ConnectRequest;

  factory ConnectRequest.fromJson(Map<String, Object?> json)
  => _$ConnectRequestFromJson(json);
}