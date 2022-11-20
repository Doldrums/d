import 'package:d/provider/models/write_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_response.freezed.dart';
part 'history_response.g.dart';

@freezed
class HistoryResponse with _$HistoryResponse {
  const factory HistoryResponse(
      {required List<WriteRequest> result}) = _HistoryResponse;
  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);
}