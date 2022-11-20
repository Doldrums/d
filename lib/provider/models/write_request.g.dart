// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WriteRequest _$$_WriteRequestFromJson(Map<String, dynamic> json) =>
    _$_WriteRequest(
      name: json['name'] as String,
      device: json['device'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_WriteRequestToJson(_$_WriteRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'device': instance.device,
      'message': instance.message,
    };
