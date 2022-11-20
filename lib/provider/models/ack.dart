import 'package:freezed_annotation/freezed_annotation.dart';

part 'ack.freezed.dart';
part 'ack.g.dart';


@freezed
class Ack with _$Ack {
  const factory Ack({
    required String name,
    required String device,
  }) = _ConnectRequest;

  factory Ack.fromJson(Map<String, Object?> json)
  => _$AckFromJson(json);
}