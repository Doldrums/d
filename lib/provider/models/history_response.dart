import 'package:d/provider/models/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_response.freezed.dart';
part 'history_response.g.dart';

@freezed
class HistoryResponse with _$HistoryResponse {
  const factory HistoryResponse(
      {required List<Message> result}) = _HistoryResponse;
  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);
}