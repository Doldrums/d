// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoryResponse _$$_HistoryResponseFromJson(Map<String, dynamic> json) =>
    _$_HistoryResponse(
      result: (json['result'] as List<dynamic>)
          .map((e) => WriteRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HistoryResponseToJson(_$_HistoryResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
