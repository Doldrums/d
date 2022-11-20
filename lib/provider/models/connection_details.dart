import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_details.freezed.dart';
part 'connection_details.g.dart';


@freezed
class ConnectionDetails with _$ConnectionDetails {
  const factory ConnectionDetails({
    required String ip,
    required String wifiName,
    required String wifiPassword,
  }) = _ConnectionDetails;

  factory ConnectionDetails.fromJson(Map<String, Object?> json)
  => _$ConnectionDetailsFromJson(json);
}